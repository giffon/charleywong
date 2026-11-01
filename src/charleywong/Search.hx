package charleywong;

import js.npm.snowball_stemmers.SnowballStemmers;
using StringTools;

/**
    Analyzed text of one field.
    `latin` is the stemmed latin words, separated and surrounded by spaces, e.g. " coffe roaster ".
    `cjk` is the CJK runs, separated by "\u0000".
**/
typedef AnalyzedText = {
    final latin:String;
    final cjk:String;
}

/**
    [entityIndex, nameLatin, nameCjk, tagsLatin, tagsCjk, metaLatin, metaCjk]
**/
typedef SearchDoc = Array<Dynamic>;

typedef SearchDict = {
    final logTotal:Float;
    final words:haxe.DynamicAccess<Float>;
    final maxLength:Int;
}

private typedef Term = {
    final ?latin:String;
    final ?cjk:String;
    final bonus:Bool;
}

/**
    A replacement of the groonga + jieba search.
    It approximates groonga's TokenBigram + NormalizerAuto + TokenFilterStem:
    CJK text is matched by substring (bigram phrase match),
    latin words are matched as whole stemmed words.
    Query CJK runs are segmented with a jieba dictionary, all segments must match (AND),
    and documents containing the whole run get a ranking bonus.
    Score is the weighted term frequency (name * 3 + tags * 2 + meta).
**/
class Search {
    static final weights = [3, 2, 1];
    static final phraseBonus = 10;
    static final stemmer = SnowballStemmers.newStemmer("english");

    static function tokenRegexp() return ~/[a-z]+|[0-9]+|[㐀-鿿豈-﫿぀-ヿ가-힯]+/g;
    static final cjkRegexp = ~/^[㐀-鿿豈-﫿぀-ヿ가-힯]/;

    static public function normalize(text:String):String {
        return (js.Syntax.code("{0}.normalize('NFKC')", text):String).toLowerCase();
    }

    static function tokens(text:String):Array<String> {
        final r = [];
        tokenRegexp().map(normalize(text), re -> {
            r.push(re.matched(0));
            "";
        });
        return r;
    }

    static public function analyze(text:String):AnalyzedText {
        final latin = [];
        final cjk = [];
        for (t in tokens(text)) {
            if (cjkRegexp.match(t))
                cjk.push(t);
            else
                latin.push(stemmer.stem(t));
        }
        return {
            latin: latin.length > 0 ? " " + latin.join(" ") + " " : "",
            cjk: cjk.join("\u0000"),
        }
    }

    static public function doc(entityIndex:Int, name:String, tags:String, meta:String):SearchDoc {
        final r:SearchDoc = [entityIndex];
        for (field in [name, tags, meta]) {
            final a = analyze(field);
            r.push(a.latin);
            r.push(a.cjk);
        }
        return r;
    }

    /**
        jieba's route calculation (max sum of log probability), without the HMM for unknown words.
        Unknown spans are split into single characters.
    **/
    static public function segment(dict:SearchDict, run:String):Array<String> {
        final n = run.length;
        final best = [for (_ in 0...n+1) Math.NEGATIVE_INFINITY];
        final from = [for (_ in 0...n+1) 0];
        best[0] = 0;
        for (i in 0...n) {
            if (best[i] == Math.NEGATIVE_INFINITY)
                continue;
            for (l in 1...Std.int(Math.min(dict.maxLength, n - i)) + 1) {
                final w = run.substr(i, l);
                final f:Null<Float> = l == 1 ? 1 : dict.words[w];
                if (f == null)
                    continue;
                final s = best[i] + Math.log(f) - dict.logTotal;
                if (s > best[i + l]) {
                    best[i + l] = s;
                    from[i + l] = i;
                }
            }
        }
        final r = [];
        var j = n;
        while (j > 0) {
            r.unshift(run.substring(from[j], j));
            j = from[j];
        }
        return r;
    }

    static function terms(dict:SearchDict, query:String):Array<Term> {
        final r:Array<Term> = [];
        for (t in tokens(query)) {
            if (cjkRegexp.match(t)) {
                final segments = segment(dict, t);
                for (s in segments)
                    r.push({ cjk: s, bonus: false });
                if (segments.length > 1)
                    r.push({ cjk: t, bonus: true });
            } else {
                r.push({ latin: " " + stemmer.stem(t) + " ", bonus: false });
            }
        }
        return r;
    }

    static function count(haystack:String, needle:String, step:Int):Int {
        var n = 0;
        var i = haystack.indexOf(needle);
        while (i >= 0) {
            n++;
            i = haystack.indexOf(needle, i + step);
        }
        return n;
    }

    /**
        Returns the entity indices of the matching docs, best match first.
    **/
    static public function search(docs:Array<SearchDoc>, dict:SearchDict, query:String):Array<Int> {
        final terms = terms(dict, query);
        if (terms.length == 0)
            return [];
        final results = [];
        for (doc in docs) {
            var score = 0;
            var matched = true;
            for (term in terms) {
                var s = 0;
                for (f in 0...weights.length) {
                    final n = if (term.latin != null) {
                        // words are separated by a single space, so the next match may start at the trailing space
                        count(doc[1 + f * 2], term.latin, term.latin.length - 1);
                    } else {
                        count(doc[2 + f * 2], term.cjk, term.cjk.length);
                    }
                    s += n * weights[f];
                }
                if (term.bonus) {
                    score += s * phraseBonus;
                } else if (s == 0) {
                    matched = false;
                    break;
                } else {
                    score += s;
                }
            }
            if (matched)
                results.push({ entity: (doc[0]:Int), score: score });
        }
        // Array.sort is stable in JS, so ties keep the doc order
        results.sort((a, b) -> b.score - a.score);
        return results.map(r -> r.entity);
    }
}

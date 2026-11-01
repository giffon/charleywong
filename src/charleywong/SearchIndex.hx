package charleywong;

import sys.FileSystem;
import sys.io.File;
import charleywong.Search;
using charleywong.EntityTools;
using StringTools;

/**
    The search docs of the entities and the dictionary used by `Search`,
    shared by the static site generator and the local server.
**/
class SearchIndex {
    static public final dictFile = "data/search/jieba-dict.txt";

    /**
        The entities, of which the indices are used in the search docs.
    **/
    public final entities:Array<Entity>;
    public final docs:Array<SearchDoc>;
    public final dict:SearchDict;

    public function new(entities:Array<Entity>, dict:SearchDict):Void {
        this.entities = entities;
        this.dict = dict;
        docs = [
            for (i => e in entities)
            if (e.searchable())
            {
                final t = text(e);
                Search.doc(i, t.name, t.tags, t.meta);
            }
        ];
    }

    public function search(query:String):Array<Entity> {
        return Search.search(docs, dict, query).map(i -> entities[i]);
    }

    static public function text(e:Entity) {
        return {
            name: e.name.printAll(),
            tags: [
                for (t in Tag.expend(e.tags))
                for (v in t.name)
                v
            ].join("\n"),
            meta:
                e.webpages.map(p -> switch (p.meta) {
                    case null: "";
                    case m:
                        (switch (m["name"]) {
                            case null: "";
                            case name: name;
                        }) + "\n" +
                        (switch (m["about"]) {
                            case null: "";
                            case about: about;
                        });
                }).join("\n")
                +
                switch (HkbaseDirectory.getData(e)) {
                    case null: "";
                    case d:
                        d.name_en + "\n" +
                        d.name_zh + "\n" +
                        d.type + "\n" +
                        d.description;
                },
        }
    }

    static public function loadDict():SearchDict {
        if (!FileSystem.exists(dictFile))
            throw '${dictFile} not found. Run `just search-dict` first.';
        final words:haxe.DynamicAccess<Float> = {};
        var logTotal = 0.0;
        var maxLength = 1;
        for (line in File.getContent(dictFile).split("\n")) {
            if (line.startsWith("# total ")) {
                logTotal = Math.log(Std.parseFloat(line.substr("# total ".length)));
                continue;
            }
            if (line == "" || line.startsWith("#"))
                continue;
            final parts = line.split(" ");
            words[parts[0]] = Std.parseFloat(parts[1]);
            maxLength = Std.int(Math.max(maxLength, parts[0].length));
        }
        return {
            logTotal: logTotal,
            words: words,
            maxLength: maxLength,
        };
    }
}

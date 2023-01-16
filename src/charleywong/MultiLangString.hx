package charleywong;

import haxe.DynamicAccess;
using hxLINQ.LINQ;

@:forward(exists, keys, iterator, keyValueIterator)
abstract MultiLangString(DynamicAccess<String>) from DynamicAccess<String> from Dynamic<String> {
    @:arrayAccess
    public inline function get(key: Lang): Null<String> {
        return this.get(key);
    }

    public function toJson() {
        var o:DynamicAccess<String> = {};
        for (lang => str in this) {
            o[lang] = str;
        }
        return o;
    }

    public function printAll():String {
        return [
            for (lang in ([en, zh]:Array<String>).concat([for (lang in this.keys()) lang]).linq().distinct().toArray())
            this[lang]
        ]
            .filter(v -> v != null)
            .join(" ");
    }

    public function mapAll<T>(fn:(lang:Lang, value:String)->T):Array<T> {
        return [
            for (lang in ([en, zh]:Array<String>).concat([for (lang in this.keys()) lang]).linq().distinct().toArray())
            if (this[lang] != null)
            fn((cast lang:Lang), this[lang])
        ];
    }

    public function print(preference:Array<Lang>, allowOthers:Bool = true):String {
        for (lang in preference)
            switch (this[lang]) {
                case null: continue;
                case v: return v;
            }

        if (allowOthers)
            for (lang => v in this)
                return v;

        return null;
    }

    static public function parseName(name:String):MultiLangString {
        var noChi = ~/^[^\u4e00-\u9fff]+$/; // no chinese characters
        var allChi = ~/^[\u4e00-\u9fff \-_\.·]+$/; // all chinese characters
        var chi_en = ~/^([\u4e00-\u9fff ]*[\u4e00-\u9fff])[^A-Za-z0-9\u4e00-\u9fff]*([^\u4e00-\u9fff]+)$/; // chinese then eng
        var en_chi = ~/^([^\u4e00-\u9fff]+?)[ \-]*([\u4e00-\u9fff]+)$/; // chinese then eng
        return if (noChi.match(name))
            {
                en: name
            }
        else if (allChi.match(name))
            {
                zh: name
            }
        else if (chi_en.match(name))
            {
                zh: chi_en.matched(1),
                en: chi_en.matched(2)
            }
        else if (en_chi.match(name))
            {
                en: en_chi.matched(1),
                zh: en_chi.matched(2)
            }
        else
            {
                zh: name
            }
    }
}
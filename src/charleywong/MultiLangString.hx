package charleywong;

import haxe.DynamicAccess;

@:forward(exists, keys, iterator, keyValueIterator)
abstract MultiLangString(DynamicAccess<String>) from DynamicAccess<String> {
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
            for (lang in [en, zh])
            this[lang]
        ]
            .filter(v -> v != null)
            .join(" ");
    }
}
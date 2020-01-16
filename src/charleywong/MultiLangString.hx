package charleywong;

import haxe.DynamicAccess;

@:forward(exists, keys, iterator, keyValueIterator)
abstract MultiLangString(Map<Lang,String>) from Map<Lang,String> {
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
}
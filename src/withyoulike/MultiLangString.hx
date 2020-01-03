package withyoulike;

@:forward(exists, keys, iterator, keyValueIterator)
abstract MultiLangString(Map<Lang,String>) from Map<Lang,String> {
    @:arrayAccess
    public inline function get(key: Lang): Null<String> {
        return this.get(key);
    }
}
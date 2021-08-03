package charleywong.groonga;

// https://groonga.org/docs/reference/command/output_format.html

abstract CommandResult<T>(Array<Dynamic>) {
    public var header(get, never):CommandResultHeader;
    function get_header() return this[0];

    public var body(get, never):T;
    function get_body():T return this[1];
}

abstract CommandResultHeader(Array<Dynamic>) {
    public var returnCode(get, never):Int;
    function get_returnCode() return this[0];

    public var timeStarted(get, never):Float;
    function get_timeStarted() return this[1];

    public var timeElapsed(get, never):Float;
    function get_timeElapsed() return this[2];

    public var errorMessage(get, never):Null<String>;
    function get_errorMessage() return this[3];

    public var errorLocation(get, never):Null<Array<Dynamic>>;
    function get_errorLocation() return this[4];
}

typedef SelectResult = CommandResult<SelectResultBody>;

abstract SelectResultBody(Array<Dynamic>) {
    public var searchResult(get, never):SearchResult;
    function get_searchResult() return this[0];

    // public var drilldownResult(get, never):Dynamic; // TODO
}

abstract SearchResult(Array<Dynamic>) {
    /**
        number of matched records before limit is applied
    **/
    public var hits(get, never):Int;
    function get_hits() return this[0][0];

    public var columns(get, never):Array<Column>;
    function get_columns() return this[1];

    public var records(get, never):Records;
    function get_records():Records return cast this;
}

abstract Records(Array<Dynamic>) {
    @:arrayAccess function get(i:Int):Array<Dynamic> return this[i + 2];

    public function iterator() {
        var itr = this.iterator();
        itr.next();
        itr.next();
        return itr;
    }
}

abstract Column(Array<String>) {
    public var name(get, never):String;
    function get_name() return this[0];

    public var type(get, never):Null<String>;
    function get_type() return this[1];
}

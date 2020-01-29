package charleywong;

import haxe.ds.*;
import charleywong.*;

typedef Post = {
    url:String,
    ?summary:Null<MultiLangString>,
}

typedef WebPage = {
    ?name:Null<MultiLangString>,
    url:String,
    ?meta:Map<String, Dynamic>,
}

interface Entity {
    public final id:String;
    public final name:MultiLangString;
    public final webpages:Array<WebPage>;
    public final posts:Array<Post>;
    public final tags:Array<Tag>;
}
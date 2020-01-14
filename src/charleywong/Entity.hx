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
}

interface Entity {
    public final name:MultiLangString;
    public final webpages:Array<WebPage>;
    public final posts:Array<Post>;
}
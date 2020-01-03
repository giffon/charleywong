package withyoulike;

import haxe.ds.*;
import withyoulike.*;

typedef Post = {
    url:String,
    summary:MultiLangString,
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
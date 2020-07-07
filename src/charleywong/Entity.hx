package charleywong;

import haxe.*;
import haxe.ds.*;
import charleywong.*;
import charleywong.Tag;

typedef Post = {
    url:String,
    ?summary:Null<MultiLangString>,
    ?meta:DynamicAccess<Dynamic>,
}

typedef WebPage = {
    ?name:Null<MultiLangString>,
    url:String,
    ?meta:DynamicAccess<Dynamic>,
    ?hidden:Bool,
}

typedef Place = {
    ?address:MultiLangString,
    ?googleMapsPlaceId:String,
    ?coordinates:{
        lat:Float,
        lng:Float,
    },
    ?area:MultiLangString,
}

typedef Entity = {
    id:String,
    name:MultiLangString,
    webpages:Array<WebPage>,
    posts:Array<Post>,
    tags:Array<TagId>,
    ?alias:Array<String>,
    ?places:Array<Place>,
    ?yellowBlueMapIds:Array<String>,
}

package charleywong;

import haxe.*;
import haxe.ds.*;
import charleywong.*;

typedef Post = {
    url:String,
    ?summary:Null<MultiLangString>,
}

typedef WebPage = {
    ?name:Null<MultiLangString>,
    url:String,
    ?meta:DynamicAccess<Dynamic>,
}

@:structInit
class Entity {
    public final id:String;
    public final name:MultiLangString;
    public final webpages:Array<WebPage>;
    public final posts:Array<Post>;
    public final tags:Array<Tag>;

    static public function fromJson(json:Dynamic):Entity {
        return {
            id: json.id,
            name: json.name,
            webpages: json.webpages,
            posts: json.posts,
            tags: (json.tags:Array<String>).map(t -> Tag.tags[t]),
        };
    }
}
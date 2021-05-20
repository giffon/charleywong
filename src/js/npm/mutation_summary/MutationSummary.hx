package js.npm.mutation_summary;

import js.html.HtmlElement;
import haxe.Constraints;

typedef AttributeQuery = {
    attribute:String
};

typedef AttributeQueryResult = {
    added:Array<HtmlElement>,
    removed:Array<HtmlElement>,
    valueChanged:Array<HtmlElement>,
    getOldAttribute:(element:HtmlElement, attrName:String)->Dynamic,
    getOldParentNode:(element:HtmlElement)->HtmlElement,
}

typedef ElementQuery = {
    ?element:String,
    elementAttributes:String,
}

typedef ElementQueryResult = {
    added:Array<HtmlElement>,
    removed:Array<HtmlElement>,
    reparented:Array<HtmlElement>,

    ?attributeChanged:Dynamic<Array<HtmlElement>>,
    ?getOldAttribute:(element:HtmlElement, attrName:String)->Dynamic,
    ?getOldParentNode:(element:HtmlElement)->HtmlElement,
}

typedef CharacterDataQuery = {
    characterData:Bool,
}

typedef AllQuery = {
    all:Bool,
}

abstract Query(Dynamic)
from AttributeQuery
from ElementQuery
from CharacterDataQuery
from AllQuery
{}

@:jsRequire("mutation-summary", "MutationSummary")
extern class MutationSummary {
    public function new(opts:{
        callback:Function,
        ?rootNode:HtmlElement,
        ?observeOwnChanges:Bool,
        ?oldPreviousSibling:Bool,
        queries:Array<Query>,
    }):Void;

    public function takeSummaries():Null<Array<Dynamic>>;
    public function disconnect():Void;
    public function reconnect():Void;
}
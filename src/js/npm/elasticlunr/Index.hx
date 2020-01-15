package js.npm.elasticlunr;

import haxe.Constraints;

@:jsRequire("elasticlunr", "Index")
extern class Index {
    public function on(eventName:String, fn:Function):Void;
    public function off(eventName:String, fn:Function):Void;
    static public function load(serialisedData:Dynamic):Index;
    public function addField(fieldName:String):Index;
    public function setRef(refName:String, ?emitEvent:Bool):Index;
    public function saveDocument(save:Bool):Index;
    public function addDoc(doc:Dynamic, ?emitEvent:Bool):Void;
    public function removeDocByRef(docRef:Dynamic, ?emitEvent:Bool):Void;
    public function removeDoc(doc:Dynamic, ?emitEvent:Bool):Void;
    public function updateDoc(doc:Dynamic, ?emitEvent:Bool):Void;
    public function getFields():Array<String>;
    public function search(query:String, userConfig:Dynamic):Dynamic;
    public function fieldSearch(queryTokens:Array<String>, field:String, config:Dynamic):Dynamic;
    public function mergeScores(accumScores:Dynamic, scores:String, op:Dynamic):Void;
    public function fieldSearchStats(docTokens:Dynamic, token:String, docs:Dynamic):Void;
    public function coordNorm(scores:Dynamic, docTokens:Dynamic, n:Int):Dynamic;
    public function toJSON():Dynamic;
    public function use(plugin:Function):Void;
}
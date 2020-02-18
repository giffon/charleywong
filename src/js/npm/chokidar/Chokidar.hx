package js.npm.chokidar;

import haxe.DynamicAccess;
import js.lib.Promise;
import haxe.extern.EitherType;
import js.node.events.EventEmitter;

typedef Paths = EitherType<String, Array<String>>;

@:jsRequire("chokidar")
extern class Chokidar {
    static public function watch(paths:Paths, ?opts:Dynamic):Watcher;
}

extern class Watcher extends EventEmitter<Watcher> {
    public function add(paths:Paths):Void;
    public function getWatched():DynamicAccess<Array<String>>;
    public function unwatch(paths:Paths):Void;
    public function close():Promise<Null<Void>>;
}
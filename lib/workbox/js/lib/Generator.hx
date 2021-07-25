package js.lib;

typedef Generator<T, TReturn, TNext> = {
	function next(args:haxe.extern.Rest<Any>):IteratorResult<T, TReturn>;
	@:native("return")
	function return_(value:TReturn):IteratorResult<T, TReturn>;
	@:native("throw")
	function throw_(e:Dynamic):IteratorResult<T, TReturn>;
};
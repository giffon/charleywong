@:jsRequire("workbox-navigation-preload") @valueModuleOnly extern class WorkboxNavigationPreload {
	/**
		If the browser supports Navigation Preload, then this will disable it.
	**/
	static function disable():Void;
	/**
		If the browser supports Navigation Preload, then this will enable it.
	**/
	static function enable(?headerValue:String):Void;
	static function isSupported():Bool;
}
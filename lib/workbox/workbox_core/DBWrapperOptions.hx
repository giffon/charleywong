package workbox_core;

typedef DBWrapperOptions = {
	@:optional
	dynamic function onupgradeneeded(event:js.html.idb.VersionChangeEvent):Dynamic;
	@:optional
	dynamic function onversionchange(event:js.html.idb.VersionChangeEvent):Dynamic;
};
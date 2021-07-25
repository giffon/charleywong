package workbox_core;

/**
	Options passed to a `ManualHandlerCallback` function.
**/
typedef ManualHandlerCallbackOptions = {
	var event : Dynamic;
	var request : ts.AnyOf2<String, js.html.Request>;
};
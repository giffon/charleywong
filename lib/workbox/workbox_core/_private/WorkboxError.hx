package workbox_core._private;

/**
	Workbox errors should be thrown with this class.
	This allows use to ensure the type easily in tests,
	helps developers identify errors from workbox
	easily and allows use to optimise error
	messages correctly.
**/
@:jsRequire("workbox-core/_private", "WorkboxError") extern class WorkboxError extends js.lib.Error {
	function new(errorCode:String, ?details:workbox_core.MapLikeObject);
	@:optional
	var details : workbox_core.MapLikeObject;
	static var prototype : WorkboxError;
}
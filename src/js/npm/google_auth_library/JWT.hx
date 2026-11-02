package js.npm.google_auth_library;

@:jsRequire("google-auth-library", "JWT")
extern class JWT {
    public function new(opts:{
        email:String,
        key:String,
        ?scopes:Array<String>,
    }):Void;
}

package js.npm.react_facebook;

import react.*;

@:jsRequire("react-facebook", "FacebookProvider")
extern class FacebookProvider extends ReactComponent {}

@:jsRequire("react-facebook", "EmbeddedPost")
extern class EmbeddedPost extends ReactComponent {}
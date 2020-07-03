package js.npm.material_ui;

import haxe.DynamicAccess;
import react.*;

@:jsRequire("@material-ui/core/Radio", "default")
extern class Radio extends ReactComponent {}

@:jsRequire("@material-ui/core/RadioGroup", "default")
extern class RadioGroup extends ReactComponent {}

@:jsRequire("@material-ui/core/FormGroup", "default")
extern class FormGroup extends ReactComponent {}

@:jsRequire("@material-ui/core/FormControlLabel", "default")
extern class FormControlLabel extends ReactComponent {}

@:jsRequire("@material-ui/core/FormControl", "default")
extern class FormControl extends ReactComponent {}

@:jsRequire("@material-ui/core/FormLabel", "default")
extern class FormLabel extends ReactComponent {}

@:jsRequire("@material-ui/core/InputLabel", "default")
extern class InputLabel extends ReactComponent {}

@:jsRequire("@material-ui/core/MenuItem", "default")
extern class MenuItem extends ReactComponent {}

@:jsRequire("@material-ui/core/Typography", "default")
extern class Typography extends ReactComponent {}

@:jsRequire("@material-ui/core/TextField", "default")
extern class TextField extends ReactComponent {}

@:jsRequire("@material-ui/core/Button", "default")
extern class Button extends ReactComponent {}

@:jsRequire("@material-ui/core/IconButton", "default")
extern class IconButton extends ReactComponent {}

@:jsRequire("@material-ui/core/Switch", "default")
extern class Switch extends ReactComponent {}

@:jsRequire("@material-ui/core/Select", "default")
extern class Select extends ReactComponent {}

@:jsRequire("@material-ui/core/styles")
extern class Styles {
    static public function styled(c:Dynamic):Dynamic->ReactComponent;
    static public function makeStyles(func:(theme:Dynamic)->Dynamic):()->Dynamic<String>;
}

@:jsRequire("@material-ui/core/AppBar", "default")
extern class AppBar extends ReactComponent {}

@:jsRequire("@material-ui/core/Toolbar", "default")
extern class Toolbar extends ReactComponent {}

@:jsRequire("@material-ui/core/useScrollTrigger", "default")
extern class UseScrollTrigger {
    @:selfCall
    static function useScrollTrigger(opts:Dynamic):Dynamic;
}

@:jsRequire("@material-ui/core/Snackbar", "default")
extern class Snackbar extends ReactComponent {}

@:jsRequire("@material-ui/core/Tooltip", "default")
extern class Tooltip extends ReactComponent {}

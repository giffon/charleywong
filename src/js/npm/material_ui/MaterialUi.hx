package js.npm.material_ui;

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

@:jsRequire("@material-ui/core/MenuItem", "default")
extern class MenuItem extends ReactComponent {}

@:jsRequire("@material-ui/core/Typography", "default")
extern class Typography extends ReactComponent {}

@:jsRequire("@material-ui/core/TextField", "default")
extern class TextField extends ReactComponent {}

@:jsRequire("@material-ui/core/Button", "default")
extern class Button extends ReactComponent {}

@:jsRequire("@material-ui/core/Switch", "default")
extern class Switch extends ReactComponent {}

@:jsRequire("@material-ui/core/styles")
extern class Styles {
    static public function styled(c:Dynamic):Dynamic->ReactComponent;
}

package charleywong.chrome;

import js.lib.Promise;
import react.ReactComponent.ReactElement;
import js.Browser.*;
import js.Node.*;
import js.npm.material_ui.MaterialUi;
import react.*;
import react.Fragment;
import react.ReactMacro.jsx;
import chrome.*;
import charleywong.chrome.Settings.*;

class SettingsControl extends ReactComponent {
    final ServerEndpointInput = Styles.styled(TextField)({
        width: "100%",
    });
    final SaveButton = Styles.styled(Button)({
        margin: "0.5em",
    });
    final ResetButton = Styles.styled(Button)({
        margin: "0.5em",
    });

    var defaultSettings(get, null):SettingsData;
    function get_defaultSettings() return props.defaultSettings;

    var serverEndpoint(get, set):String;
    function get_serverEndpoint() return state.serverEndpoint;
    function set_serverEndpoint(v) {
        setState({
            serverEndpoint: v,
        });
        return v;
    }

    function new(props) {
        super(props);
        state = {
            serverEndpoint: defaultSettings.serverEndpoint,
        };
    }

    function onClickSave(evt) {
        Storage.local.set(({
            serverEndpoint: serverEndpoint
        }:SettingsData), function(){
            window.close();
        });
    }

    function onClickReset(evt) {
        serverEndpoint = Settings.defaultSettings.serverEndpoint;
    }

    override function render() {
        return jsx('
            <Fragment>
                <ServerEndpointInput
                    label="Server Endpoint"
                    onChange=${function(evt) { serverEndpoint = evt.target.value; }}
                    value=${serverEndpoint}
                />

                <ResetButton
                    onClick=${onClickReset}
                >
                    Reset
                </ResetButton>

                <SaveButton
                    color="primary"
                    onClick=${onClickSave}
                >
                    Save
                </SaveButton>
            </Fragment>
        ');
    }
}

class Options {
    static function main():Void {
        getSettings().then(function(settings) {
            ReactDOM.render(jsx('
                <OptionsControl defaultSettings=${settings} />
            '), document.getElementById("settings"));
        });
    }
}
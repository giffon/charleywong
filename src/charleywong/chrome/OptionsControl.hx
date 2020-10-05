package charleywong.chrome;

import js.Browser.*;
import mui.core.*;
import react.*;
import react.Fragment;
import react.ReactMacro.jsx;
import chrome.*;

class OptionsControl extends ReactComponent {
    final ServerEndpointInput = Styles.styled(TextField)({
        width: "100%",
    });
    final DataEntryModeGroup = Styles.styled(FormGroup)({
        margin: "0.5em",
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
    var dataEntryMode(get, set):Bool;
    function get_dataEntryMode() return state.dataEntryMode;
    function set_dataEntryMode(v) {
        setState({
            dataEntryMode: v,
        });
        return v;
    }

    function new(props) {
        super(props);
        state = {
            serverEndpoint: defaultSettings.serverEndpoint,
            dataEntryMode: defaultSettings.dataEntryMode,
        };
    }

    function onClickSave(evt) {
        Storage.local.set({
            serverEndpoint: serverEndpoint,
            dataEntryMode: dataEntryMode,
        }, function(){
            window.close();
        });
    }

    function onClickReset(evt) {
        serverEndpoint = Settings.defaultSettings.serverEndpoint;
        dataEntryMode = Settings.defaultSettings.dataEntryMode;
    }

    override function render() {
        var dataEntrySwitch = jsx('
            <Switch size="small"
                checked=${dataEntryMode}
                onChange=${function(evt) { dataEntryMode = evt.target.checked; }}
            />
        ');
        return jsx('
            <Fragment>
                <ServerEndpointInput
                    label="伺服器"
                    onChange=${function(evt) { serverEndpoint = evt.target.value; }}
                    value=${serverEndpoint}
                />

                <DataEntryModeGroup>
                    <FormControlLabel
                        control=${dataEntrySwitch}
                        label="輸入數據模式"
                    />
                </DataEntryModeGroup>

                <ResetButton
                    onClick=${onClickReset}
                >
                    重設
                </ResetButton>

                <SaveButton
                    color="primary"
                    onClick=${onClickSave}
                >
                    儲存
                </SaveButton>
            </Fragment>
        ');
    }
}
package charleywong.chrome;

import js.lib.Promise;
import global.chrome.*;

class Settings {
    static public final defaultSettings:SettingsData = {
        serverEndpoint: "https://charleywong.info",
        dataEntryMode: false,
        serializedEntities: null,
    };

    static public function getSettings():Promise<SettingsData> {
        return new Promise(function(resolve, reject) {
            Storage.local.get(cast defaultSettings, cast function(settings:SettingsData) {
                resolve(settings);
            });
        });
    }
}
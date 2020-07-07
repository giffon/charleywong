package charleywong.chrome;

import js.lib.Promise;
import chrome.*;

class Settings {
    static public final defaultSettings:SettingsData = {
        serverEndpoint: "https://charleywong.giffon.io",
        dataEntryMode: false,
        serializedEntities: null,
    };

    static public function getSettings():Promise<SettingsData> {
        return new Promise(function(resolve, reject) {
            Storage.local.get(defaultSettings, function(settings:SettingsData) {
                resolve(settings);
            });
        });
    }
}
package charleywong;

import haxe.Json;
import sys.FileSystem;
import sys.io.File;

class GoogleServiceAccount {
    static final serviceAccountFile = "Giffon-3bb380c38488.json";
    static public final googleServiceAccount = switch [Sys.getEnv("GOOGLE_CLIENT_EMAIL"), Sys.getEnv("GOOGLE_PRIVATE_KEY")] {
        case [null, _] | [_, null]:
            if (FileSystem.exists(serviceAccountFile))
                try {
                    Json.parse(File.getContent(serviceAccountFile));
                } catch (e:Dynamic) {
                    null;
                }
            else
                null;
        case [client_email, private_key]:
            {
                client_email: client_email,
                private_key: private_key,
            };
    }

    #if js
    static public function googleSheetsAuth():js.npm.google_auth_library.JWT {
        if (googleServiceAccount == null)
            throw 'Set GOOGLE_CLIENT_EMAIL and GOOGLE_PRIVATE_KEY, or put the service account key in $serviceAccountFile';
        return new js.npm.google_auth_library.JWT({
            email: googleServiceAccount.client_email,
            key: googleServiceAccount.private_key,
            scopes: ["https://www.googleapis.com/auth/spreadsheets"],
        });
    }
    #end
}
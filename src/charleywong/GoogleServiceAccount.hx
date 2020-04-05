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
}
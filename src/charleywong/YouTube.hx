package charleywong;

import sys.io.File;
import sys.*;
import haxe.*;
import haxe.extern.*;
import js.lib.Promise;

@:jsRequire("googleapis", "google.auth.OAuth2")
extern class OAuth2 implements Dynamic {
    public function new(args:Rest<Dynamic>):Void;
}

@:jsRequire("googleapis", "google")
extern class Google implements Dynamic {
    static public function youtube(args:Rest<Dynamic>):YouTubeService;
}

extern class YouTubeService implements Dynamic {

}

class YouTube {
    static final YOUTUBE_KEY = File.getContent("YOUTUBE_KEY");
    static final TOKEN_PATH = "YT_TOKEN.json";
    static final CLIENT_SECRET_PATH = "client_secret_731590974984-8onqmrnn1iqckt5vufe9siohspm83gae.apps.googleusercontent.com.json";
    static final SCOPES = ['https://www.googleapis.com/auth/youtube.readonly'];

    static function authorize(credentials):Promise<OAuth2> {
        var clientSecret = credentials.installed.client_secret;
        var clientId = credentials.installed.client_id;
        var redirectUrl = credentials.installed.redirect_uris[0];
        var oauth2Client = new OAuth2(clientId, clientSecret, redirectUrl);
      
        // Check if we have previously stored a token.
        if (FileSystem.exists(TOKEN_PATH)) {
            oauth2Client.credentials = Json.parse(File.getContent(TOKEN_PATH));
            return Promise.resolve(oauth2Client);
        } else {
            return getNewToken(oauth2Client);
        }
    }

    static function getNewToken(oauth2Client:OAuth2):Promise<OAuth2> {
        var authUrl = oauth2Client.generateAuthUrl({
            access_type: 'offline',
            scope: SCOPES
        });
        trace('Authorize this app by visiting this url: ', authUrl);
        trace('Enter the code from that page here: ');
        var code = Sys.stdin().readLine();
        return new Promise(function(resolve, reject) {
            oauth2Client.getToken(code, function(err, token) {
                if (err != null) {
                    trace('Error while trying to retrieve access token', err);
                    reject(err);
                    return;
                }
                oauth2Client.credentials = token;
                File.saveContent(TOKEN_PATH, Json.stringify(token));
                resolve(oauth2Client);
            });
        });
    }

    static function main():Void {
        var yt = Google.youtube("v3");
        yt.channels.list({
            auth: YOUTUBE_KEY,
            part: 'snippet,contentDetails,statistics',
            forUsername: 'GoogleDevelopers'
        }, function(err, response) {
            if (err) {
                trace('The API returned an error: ' + err);
                return;
            }
            var channels:Array<Dynamic> = response.data.items;
            if (channels.length == 0) {
                trace('No channel found.');
            } else {
                trace('This channel\'s ID is ${channels[0].id}. Its title is \'${channels[0].snippet.title}\', and it has ${channels[0].statistics.viewCount} views.');
            }
        });
    }
}
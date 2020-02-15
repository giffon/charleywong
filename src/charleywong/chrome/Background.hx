package charleywong.chrome;

import haxe.io.Path;
import js.lib.Promise;
import js.Browser.*;
import chrome.*;
using Lambda;

class Background {
    static var entityIndex:Promise<EntityIndex> = new Promise(function(resolve, reject) {
        Storage.local.get(["entities"], function(results) {
            if (results.entities != null) {
                resolve(results.entities);
                return;
            }

            Settings.getSettings().then(function(settings) {
                window.fetch(Path.join([settings.serverEndpoint, "list", "all.json"]))
                    .then(r -> r.json())
                    .then((a:Array<Dynamic>) -> a.map(Entity.fromJson))
                    .then(function(entities:Array<Entity>) {
                        resolve(new EntityIndex([for (e in entities) e.id => e]));
                    })
                    .catchError(reject);
            });
        });
    });

    static function onMessage(?request:Dynamic, sender, sendResponse:Dynamic->Void) {
        switch (request:{ call:String, args:Array<Dynamic> }) {
            case { call: "getEntityFromFb", args: [fb] }:
                entityIndex.then(function(index) {
                    switch (index.entitiesOfFbPage[fb]) {
                        case null:
                            sendResponse(false);
                        case e:
                            sendResponse(e.toJson());
                    }
                });
                return true;
            case _:
                throw 'Unknown request: $request';
        }
    }

    static function main():Void {
        Runtime.onMessage.addListener(onMessage);
    }
}
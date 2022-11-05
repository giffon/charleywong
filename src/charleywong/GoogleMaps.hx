package charleywong;

import sys.io.File;
import js.lib.Promise;
import CrossFetch.fetch;
using StringTools;
using Lambda;

class GoogleMaps {
    static public final client = new js.npm.googlemaps.Client();
    static public var GEOCODING_KEY(get, null):Null<String>;
    static function get_GEOCODING_KEY() return GEOCODING_KEY != null ? GEOCODING_KEY : GEOCODING_KEY = try {
        File.getContent("GEOCODING_KEY").trim();
    } catch (err) {
        null;
    }

    static public function refreshPlaceId(placeId:String):Promise<String> {
        return client.placeDetails({
            params: {
                key: GEOCODING_KEY,
                place_id: placeId,
                fields: ["place_id"],
            }
        }).then(r -> {
            switch (r.data.result) {
                case null:
                    throw 'Cannot refresh ${placeId}: ${r.data.status}';
                case result:
                    result.place_id;
            }
        });
    }

    static function refreshAllPlaceIds():Promise<Void> {
        return Promise.all(
            [
                for (e in ServerMain.entityIndex.entities)
                if (e.places != null && e.places.exists(p -> p.googleMapsPlaceId != null))
                e
            ].map(e -> {
                var dirty = false;
                Promise.all([
                    for (p in e.places)
                    if (p.googleMapsPlaceId != null)
                    refreshPlaceId(p.googleMapsPlaceId)
                        .then(newId -> {
                            if (newId != p.googleMapsPlaceId) {
                                p.googleMapsPlaceId = newId;
                                dirty = true;
                            }
                        })
                        .catchError(err -> {
                            if (err.code == "ERR_BAD_REQUEST" && err.response.data.status == "NOT_FOUND") {
                                trace('Not found: ${p.googleMapsPlaceId} (${e.id})');
                            } else if (err.code == "ERR_BAD_REQUEST") {
                                trace(err.response.data.error_message);
                            } else {
                                trace(err);
                            }
                        })
                ]).then(_ -> {
                    if (dirty) {
                        ServerMain.saveEntity(e, false, false);
                    }
                });
            })
        ).then(_ -> null);
    }

    static function main():Void {
        switch (Sys.args()) {
            case ["refreshAllPlaceIds"]: refreshAllPlaceIds();
            case _: throw "unknown args";
        }
    }
}
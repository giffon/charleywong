package charleywong;

import sys.io.File;
import js.lib.Promise;
import CrossFetch.fetch;
using StringTools;
using Lambda;

typedef LatLngLiteral = {
    lat:Float,
    lng:Float,
}

typedef AddressComponent = {
    long_name:String,
    short_name:String,
    types:Array<String>,
}

typedef PlaceDetailsResult = {
    ?address_components:Array<AddressComponent>,
    ?formatted_address:String,
    ?geometry:{
        location:LatLngLiteral,
    },
    ?name:String,
    ?place_id:String,
}

typedef PlaceDetailsResponse = {
    status:String,
    ?error_message:String,
    ?result:PlaceDetailsResult,
}

class GoogleMaps {
    static public var GEOCODING_KEY(get, null):Null<String>;
    static function get_GEOCODING_KEY() return GEOCODING_KEY != null ? GEOCODING_KEY : GEOCODING_KEY = try {
        File.getContent("GEOCODING_KEY").trim();
    } catch (err) {
        null;
    }

    /**
        https://developers.google.com/maps/documentation/places/web-service/legacy/details
        Rejects with the response when its status is neither OK nor ZERO_RESULTS.
    **/
    static public function placeDetails(placeId:String, ?fields:Array<String>):Promise<PlaceDetailsResponse> {
        final params = new js.html.URLSearchParams();
        params.set("key", GEOCODING_KEY);
        params.set("place_id", placeId);
        if (fields != null)
            params.set("fields", fields.join(","));
        return fetch("https://maps.googleapis.com/maps/api/place/details/json?" + Std.string(params))
            .then(r -> r.json())
            .then((data:PlaceDetailsResponse) -> switch (data.status) {
                case "OK" | "ZERO_RESULTS":
                    Promise.resolve(data);
                case _:
                    // not `throw`, which would wrap it in a haxe.ValueException
                    Promise.reject(data);
            });
    }

    static public function refreshPlaceId(placeId:String):Promise<String> {
        return placeDetails(placeId, ["place_id"]).then(data -> {
            switch (data.result) {
                case null:
                    throw 'Cannot refresh ${placeId}: ${data.status}';
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
                            if (err.status == "NOT_FOUND") {
                                trace('Not found: ${p.googleMapsPlaceId} (${e.id})');
                            } else if (err.error_message != null) {
                                trace(err.error_message);
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
package charleywong;

import haxe.*;
import haxe.ds.*;
import charleywong.*;
import charleywong.Location;
import charleywong.Tag;
#if js
import js.npm.hk_address_parser_lib.Dclookup;
import js.npm.country_locator.CountryLocator;
#end

typedef Post = {
    url:String,
    ?summary:Null<MultiLangString>,
    ?meta:DynamicAccess<Dynamic>,
}

typedef WebPage = {
    ?name:Null<MultiLangString>,
    url:String,
    ?meta:DynamicAccess<Dynamic>,
    ?hidden:Bool,
}

typedef Place = {
    ?address:MultiLangString,
    ?googleMapsPlaceId:String,
    ?coordinates:{
        lat:Float,
        lng:Float,
    }
}

typedef Entity = {
    id:String,
    name:MultiLangString,
    webpages:Array<WebPage>,
    posts:Array<Post>,
    tags:Array<TagId>,
    ?alias:Array<String>,
    ?places:Array<Place>,
    ?yellowBlueMapIds:Array<String>,
}

class EntityTools {
    #if js
    static public function areas(e:Entity):Array<String> {
        if (e.places == null)
            return [];

        return e.places.map(p -> p.coordinates)
            .filter(c -> c != null)
            .map(c -> switch (Dclookup.dcNameFromCoordinates(c.lat, c.lng)["2015"]) {
                case null:
                    switch (CountryLocator.findCountryByCoordinate(c.lat, c.lng)) {
                        case { code: "HKG" }: "香港";
                        case { code: "TWN" }: "臺灣";
                        case country: country.name;
                    }
                case dc:
                    dc.csubdistrict;
            })
            .filter(a -> a != null);
    }
    #end
}
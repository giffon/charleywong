package charleywong;

#if js
import js.npm.hk_address_parser_lib.Dclookup;
import js.npm.country_locator.CountryLocator;
#end
using Lambda;

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
                        case null:
                            trace('Unknown country at ${c.lat} ${c.lng}');
                            null;
                        case { code: "HKG" }: "香港";
                        case { code: "TWN" }: "臺灣";
                        case country: country.name;
                    }
                case dc:
                    dc.district;
            })
            .filter(a -> a != null)
            .fold((item, result:Array<String>) -> result.has(item) ? result : result.concat([item]), []);
    }
    #end
}
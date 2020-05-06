package js.npm.country_locator;

@:jsRequire("country-locator")
extern class CountryLocator {
    static public function findCountryByCoordinate(lat:Float, lng:Float):Null<{
        name:String,
        code:String,
    }>;
}
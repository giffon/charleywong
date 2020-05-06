package js.npm.googlemaps;

import js.lib.Promise;
import haxe.extern.EitherType;

typedef RequestParams = {
    key:String,
}

typedef LatLngLiteral = {
    lat:Float,
    lng:Float,
}

typedef LatLngBounds = {
    northeast:LatLngLiteral,
    southwest:LatLngLiteral,
}

typedef GeocodeComponents = {
    ?administrative_area:String,
    ?country:String,
    ?locality:String,
    ?postal_code:String,
    ?route:String,
}

typedef GeocodeRequest = {
    params: {
        ?address:String,
        ?bounds:EitherType<String, LatLngBounds>,
        ?components:EitherType<String, GeocodeComponents>,
        ?language:String,
        ?region:String,
    } & RequestParams,
}

typedef GeolocateRequest = {
    data: {
        ?carrier:String,
        ?cellTowers:Array<Dynamic>,
        ?considerIp:Bool,
        ?homeMobileCountryCode:Int,
        ?homeMobileNetworkCode:Int,
        ?radioType:Dynamic,
        ?wifiAccessPoints:Array<Dynamic>,
    },
    params: RequestParams,
}

typedef PlaceDetailsRequest = {
    params: {
        ?fields:Array<String>,
        ?language:String,
        place_id:String,
        ?region:String,
        ?sessiontoken:String,
    } & RequestParams,
}

typedef ResponseData = {

}

typedef GeocodeResponse = Dynamic;
typedef GeolocateResponse = Dynamic;

typedef AddressGeometry = {
    bounds:LatLngBounds,
    location:LatLngLiteral,
    location_type:String,
    viewport:LatLngBounds,
}

typedef Place = {
    ?address_components:Array<Dynamic>,
    ?adr_address:String,
    ?business_status:String,
    ?formatted_address:String,
    ?formatted_phone_number:String,
    ?geometry:AddressGeometry,
    ?icon:String,
    ?international_phone_number:String,
    ?name:String,
    ?opening_hours:Dynamic,
    ?permanently_closed:Bool,
    ?photos:Array<Dynamic>,
    ?place_id:String,
    ?plus_code:Dynamic,
    ?price_level:Int,
    ?rating:Float,
    ?reviews:Array<Dynamic>,
    ?types:Array<Dynamic>,
    ?url:String,
    ?utc_offset:Int,
    ?vicinity:String,
    ?website:String,
}

typedef PlaceDetailsResponse = {
    config:Dynamic,
    data:{
        error_message:String,
        html_attributions:Array<String>,
        ?next_page_token:String,
        result:Place,
        status:String,
    } & ResponseData,
    headers:Dynamic,
    ?request:Dynamic,
    status:Int,
    statusText:String,
};

@:jsRequire("@googlemaps/google-maps-services-js", "Client")
extern class Client {
    public function new(?__namedParameters:Dynamic):Void;

    public function geocode(request:GeocodeRequest):Promise<GeocodeResponse>;
    public function geolocate(request:GeolocateRequest):Promise<GeolocateResponse>;
    public function placeDetails(request: PlaceDetailsRequest):Promise<PlaceDetailsResponse>
}
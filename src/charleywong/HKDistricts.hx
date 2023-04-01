package charleywong;

import which_polygon.Query;
import sys.io.File;
import js.Lib.*;

typedef HKDistrict = {
    OBJECTID:Int,
    CSDI_ADMIN_AREA_ID:String,
    AREA_TYPE:String,
    AREA_ID:String,
    AREA_CODE:String,
    NAME_TC:String,
    NAME_EN:String,
    DATA_OWNER:String,
    BEGIN_LIFESPAN:String,
    END_LIFESPAN:String,
    SHAPE_Length:Float,
    SHAPE_Area:Float
}

class HKDistricts {
    static final DCDpath = "data/hkgs/DCD.json";

    // https://spatialreference.org/ref/epsg/2326/proj4/
    static final epsg2326 = "+proj=tmerc +lat_0=22.31213333333334 +lon_0=114.1785555555556 +k=1 +x_0=836694.05 +y_0=819069.8 +ellps=intl +towgs84=-162.619,-276.959,-161.764,0.067753,-2.24365,-1.15883,-1.09425 +units=m +no_defs ";

    static public final wgs84ToEpsg2326ToLatLng:(coordinates:Array<Float>)->Array<Float> =
        require("proj4")(epsg2326).forward;

    static var query:Query<HKDistrict> = null;

    static public function fromCoordinates(lat:Float, lng:Float):Null<HKDistrict> {
        final query = query != null ? query : query = WhichPolygon.call(haxe.Json.parse(File.getContent(DCDpath)));
        return cast query.call(wgs84ToEpsg2326ToLatLng([lng, lat]));
    }
}
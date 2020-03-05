package charleywong;

import sys.io.File;
using Lambda;

typedef LocationData = {
    public var name:MultiLangString;
    @:optional public var inherits:Array<LocationId>;
}

abstract LocationId(String) from String to String {
    public var id(get, never):String;
    function get_id() return this;

    public var name(get, never):MultiLangString;
    function get_name() return Location.locations[this].name;

    public var inherits(get, never):Array<LocationId>;
    function get_inherits() return switch (Location.locations[this].inherits) {
        case null: [];
        case v: v;
    };
}

class Location {
    static function main():Void {
        var ids = [for (id => l in locations) id];
        ids.sort(Reflect.compare);
        var schema = {
            "$id": "Location.json",
            "type": "string",
            "enum": ids
        };
        File.saveContent("data/schema/Location.json", haxe.Json.stringify(schema, null, "  "));
    }

    static public final locations:Map<LocationId, LocationData> = [
        "Taiwan" => {
            name: {
                en: "Taiwan",
                zh: "臺灣",
            },
            inherits: [],
        },
        "HongKong" => {
            name: {
                en: "Hong Kong",
                zh: "香港",
            },
            inherits: [],
        },
        "HongKongIsland" => {
            name: {
                en: "Hong Kong Island",
                zh: "香港島",
            },
            inherits: [
                "HongKong"
            ],
        },
        "Kowloon" => {
            name: {
                en: "Kowloon",
                zh: "九龍",
            },
            inherits: [
                "HongKong"
            ],
        },
        "NewTerritories" => {
            name: {
                en: "New Territories",
                zh: "新界",
            },
            inherits: [
                "HongKong"
            ],
        },
        "CentralAndWesternDistrict" => {
            name: {
                en: "Central and Western District",
                zh: "中西區",
            },
            inherits: [
                "HongKongIsland"
            ],
        },
        "EasternDistrict" => {
            name: {
                en: "Eastern District",
                zh: "東區",
            },
            inherits: [
                "HongKongIsland"
            ],
        },
        "SouthernDistrict" => {
            name: {
                en: "Southern District",
                zh: "南區",
            },
            inherits: [
                "HongKongIsland"
            ],
        },
        "WanChaiDistrict" => {
            name: {
                en: "Wan Chai District",
                zh: "灣仔區",
            },
            inherits: [
                "HongKongIsland"
            ],
        },
        "ShamShuiPoDistrict" => {
            name: {
                en: "Sham Shui Po District",
                zh: "深水埗區",
            },
            inherits: [
                "Kowloon"
            ],
        },
        "KowloonCityDistrict" => {
            name: {
                en: "Kowloon City District",
                zh: "九龍城區",
            },
            inherits: [
                "Kowloon"
            ],
        },
        "KwunTongDistrict" => {
            name: {
                en: "Kwun Tong District",
                zh: "觀塘區",
            },
            inherits: [
                "Kowloon"
            ],
        },
        "WongTaiSinDistrict" => {
            name: {
                en: "Wong Tai Sin District",
                zh: "黃大仙區",
            },
            inherits: [
                "Kowloon"
            ],
        },
        "YauTsimMongDistrict" => {
            name: {
                en: "Yau Tsim Mong District",
                zh: "油尖旺區",
            },
            inherits: [
                "Kowloon"
            ],
        },
        "IslandsDistrict" => {
            name: {
                en: "Islands District",
                zh: "離島區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
        "KwaiTsingDistrict" => {
            name: {
                en: "Kwai Tsing District",
                zh: "葵青區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
        "NorthDistrict" => {
            name: {
                en: "North District",
                zh: "北區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
        "SaiKungDistrict" => {
            name: {
                en: "Sai Kung District",
                zh: "西貢區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
        "ShaTinDistrict" => {
            name: {
                en: "Sha Tin District",
                zh: "沙田區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
        "TaiPoDistrict" => {
            name: {
                en: "Tai Po District",
                zh: "大埔區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
        "TsuenWanDistrict" => {
            name: {
                en: "Tsuen Wan District",
                zh: "荃灣區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
        "TuenMunDistrict" => {
            name: {
                en: "Tuen Mun District",
                zh: "屯門區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
        "YuenLongDistrict" => {
            name: {
                en: "Yuen Long District",
                zh: "元朗區",
            },
            inherits: [
                "NewTerritories"
            ],
        },
    ];
}
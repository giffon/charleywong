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

        // CentralAndWesternDistrict
        "KennedyTown" => {
            name: {
                en: "Kennedy Town",
                zh: "堅尼地城",
            },
            inherits: [ "CentralAndWesternDistrict" ]
        },
        "ShekTongTsui" => {
            name: {
                en: "Shek Tong Tsui",
                zh: "石塘咀",
            },
            inherits: [ "CentralAndWesternDistrict" ]
        },
        "SaiYingPun" => {
            name: {
                en: "Sai Ying Pun",
                zh: "西營盤",
            },
            inherits: [ "CentralAndWesternDistrict" ]
        },
        "SheungWan" => {
            name: {
                en: "Sheung Wan",
                zh: "上環",
            },
            inherits: [ "CentralAndWesternDistrict" ]
        },
        "Central" => {
            name: {
                en: "Central",
                zh: "中環",
            },
            inherits: [ "CentralAndWesternDistrict" ]
        },
        "Admiralty" => {
            name: {
                en: "Admiralty",
                zh: "金鐘",
            },
            inherits: [ "CentralAndWesternDistrict" ]
        },
        "MidLevels" => {
            name: {
                en: "Mid-levels",
                zh: "半山區",
            },
            inherits: [ "CentralAndWesternDistrict" ]
        },
        "Peak" => {
            name: {
                en: "Peak",
                zh: "山頂",
            },
            inherits: [ "CentralAndWesternDistrict" ]
        },

        // WanChaiDistrict
        "WanChai" => {
            name: {
                en: "Wan Chai",
                zh: "灣仔",
            },
            inherits: [ "WanChaiDistrict" ],
        },
        "CausewayBay" => {
            name: {
                en: "Causeway Bay",
                zh: "銅鑼灣",
            },
            inherits: [ "WanChaiDistrict" ],
        },
        "HappyValley" => {
            name: {
                en: "Happy Valley",
                zh: "跑馬地",
            },
            inherits: [ "WanChaiDistrict" ],
        },
        "TaiHang" => {
            name: {
                en: "Tai Hang",
                zh: "大坑",
            },
            inherits: [ "WanChaiDistrict" ],
        },
        "SoKonPo" => {
            name: {
                en: "So Kon Po",
                zh: "掃桿埔",
            },
            inherits: [ "WanChaiDistrict" ],
        },
        "JardineSLookout" => {
            name: {
                en: "Jardine's Lookout",
                zh: "渣甸山"
            },
            inherits: [ "WanChaiDistrict" ],
        },

        // EasternDistrict
        "TinHau" => {
            name: {
                zh: '天后',
                en: 'Tin Hau',
            },
            inherits: [ "EasternDistrict" ]
        },
        "BraemarHill" => {
            name: {
                zh: '寶馬山',
                en: 'Braemar Hill',
            },
            inherits: [ "EasternDistrict" ]
        },
        "NorthPoint" => {
            name: {
                zh: '北角',
                en: 'North Point',
            },
            inherits: [ "EasternDistrict" ]
        },
        "QuarryBay" => {
            name: {
                zh: '鰂魚涌',
                en: 'Quarry Bay',
            },
            inherits: [ "EasternDistrict" ]
        },
        "SaiWanHo" => {
            name: {
                zh: '西灣河',
                en: 'Sai Wan Ho',
            },
            inherits: [ "EasternDistrict" ]
        },
        "ShauKeiWan" => {
            name: {
                zh: '筲箕灣',
                en: 'Shau Kei Wan',
            },
            inherits: [ "EasternDistrict" ]
        },
        "ChaiWan" => {
            name: {
                zh: '柴灣',
                en: 'Chai Wan',
            },
            inherits: [ "EasternDistrict" ]
        },
        "SiuSaiWan" => {
            name: {
                zh: '小西灣',
                en: 'Siu Sai Wan',
            },
            inherits: [ "EasternDistrict" ]
        },

        // SouthernDistrict
        "PokFuLam" => {
            name: {
                zh: '薄扶林',
                en: 'Pok Fu Lam',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "Aberdeen" => {
            name: {
                zh: '香港仔',
                en: 'Aberdeen',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "ApLeiChau" => {
            name: {
                zh: '鴨脷洲',
                en: 'Ap Lei Chau',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "WongChukHang" => {
            name: {
                zh: '黃竹坑',
                en: 'Wong Chuk Hang',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "ShousonHill" => {
            name: {
                zh: '壽臣山',
                en: 'Shouson Hill',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "RepulseBay" => {
            name: {
                zh: '淺水灣',
                en: 'Repulse Bay',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "ChungHomKok" => {
            name: {
                zh: '舂磡角',
                en: 'Chung Hom Kok',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "Stanley" => {
            name: {
                zh: '赤柱',
                en: 'Stanley',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "TaiTam" => {
            name: {
                zh: '大潭',
                en: 'Tai Tam',
            },
            inherits: [ "SouthernDistrict" ]
        },
        "ShekO" => {
            name: {
                zh: '石澳',
                en: 'Shek O',
            },
            inherits: [ "SouthernDistrict" ]
        },

        // YauTsimMongDistrict
        "TsimShaTsui" => {
            name: {
                zh: '尖沙咀',
                en: 'Tsim Sha Tsui',
            },
            inherits: [ "YauTsimMongDistrict" ]
        },
        "YauMaTei" => {
            name: {
                zh: '油麻地',
                en: 'Yau Ma Tei',
            },
            inherits: [ "YauTsimMongDistrict" ]
        },
        "WestKowloonReclamation" => {
            name: {
                zh: '西九龍填海區',
                en: 'West Kowloon Reclamation',
            },
            inherits: [ "YauTsimMongDistrict" ]
        },
        "KingsPark" => {
            name: {
                zh: '京士柏',
                en: 'King\'s Park',
            },
            inherits: [ "YauTsimMongDistrict" ]
        },
        "MongKok" => {
            name: {
                zh: '旺角',
                en: 'Mong Kok',
            },
            inherits: [ "YauTsimMongDistrict" ]
        },
        "TaiKokTsui" => {
            name: {
                zh: '大角咀',
                en: 'Tai Kok Tsui',
            },
            inherits: [ "YauTsimMongDistrict" ]
        },

        // ShamShuiPoDistrict
        "MeiFoo" => {
            name: {
                zh: '美孚',
                en: 'Mei Foo',
            },
            inherits: [ "ShamShuiPoDistrict" ]
        },
        "LaiChiKok" => {
            name: {
                zh: '荔枝角',
                en: 'Lai Chi Kok',
            },
            inherits: [ "ShamShuiPoDistrict" ]
        },
        "CheungShaWan" => {
            name: {
                zh: '長沙灣',
                en: 'Cheung Sha Wan',
            },
            inherits: [ "ShamShuiPoDistrict" ]
        },
        "ShamShuiPo" => {
            name: {
                zh: '深水埗',
                en: 'Sham Shui Po',
            },
            inherits: [ "ShamShuiPoDistrict" ]
        },
        "ShekKipMei" => {
            name: {
                zh: '石硤尾',
                en: 'Shek Kip Mei',
            },
            inherits: [ "ShamShuiPoDistrict" ]
        },
        "YauYatTsuenTaiWoPing" => {
            name: {
                zh: '又一村',
                en: 'Yau Yat TsuenTai Wo Ping',
            },
            inherits: [ "ShamShuiPoDistrict" ]
        },
        "StonecuttersIsland" => {
            name: {
                zh: '大窩坪',
                en: 'Stonecutters Island',
            },
            inherits: [ "ShamShuiPoDistrict" ]
        },

        // KowloonCityDistrict
        "HungHom" => {
            name: {
                zh: '紅磡',
                en: 'Hung Hom',
            },
            inherits: [ "KowloonCityDistrict" ]
        },
        "ToKwaWan" => {
            name: {
                zh: '土瓜灣',
                en: 'To Kwa Wan',
            },
            inherits: [ "KowloonCityDistrict" ]
        },
        "MaTauKok" => {
            name: {
                zh: '馬頭角',
                en: 'Ma Tau Kok',
            },
            inherits: [ "KowloonCityDistrict" ]
        },
        "MaTauWai" => {
            name: {
                zh: '馬頭圍',
                en: 'Ma Tau Wai',
            },
            inherits: [ "KowloonCityDistrict" ]
        },
        "KaiTak" => {
            name: {
                zh: '啟德',
                en: 'Kai Tak',
            },
            inherits: [ "KowloonCityDistrict" ]
        },
        "KowloonCity" => {
            name: {
                zh: '九龍城',
                en: 'Kowloon City',
            },
            inherits: [ "KowloonCityDistrict" ]
        },
        "HoManTin" => {
            name: {
                zh: '何文田',
                en: 'Ho Man Tin',
            },
            inherits: [ "KowloonCityDistrict" ]
        },
        "KowloonTong" => {
            name: {
                zh: '九龍塘',
                en: 'Kowloon Tong',
            },
            inherits: [ "KowloonCityDistrict" ]
        },
        "BeaconHill" => {
            name: {
                zh: '筆架山',
                en: 'Beacon Hill',
            },
            inherits: [ "KowloonCityDistrict" ]
        },

        // WongTaiSinDistrict
        "SanPoKong" => {
            name: {
                zh: '新蒲崗',
                en: 'San Po Kong',
            },
            inherits: [ "WongTaiSinDistrict" ]
        },
        "WongTaiSin" => {
            name: {
                zh: '黃大仙',
                en: 'Wong Tai Sin',
            },
            inherits: [ "WongTaiSinDistrict" ]
        },
        "TungTau" => {
            name: {
                zh: '東頭',
                en: 'Tung Tau',
            },
            inherits: [ "WongTaiSinDistrict" ]
        },
        "WangTauHom" => {
            name: {
                zh: '橫頭磡',
                en: 'Wang Tau Hom',
            },
            inherits: [ "WongTaiSinDistrict" ]
        },
        "LokFu" => {
            name: {
                zh: '樂富',
                en: 'Lok Fu',
            },
            inherits: [ "WongTaiSinDistrict" ]
        },
        "DiamondHill" => {
            name: {
                zh: '鑽石山',
                en: 'Diamond Hill',
            },
            inherits: [ "WongTaiSinDistrict" ]
        },
        "TszWanShan" => {
            name: {
                zh: '慈雲山',
                en: 'Tsz Wan Shan',
            },
            inherits: [ "WongTaiSinDistrict" ]
        },
        "NgauChiWan" => {
            name: {
                zh: '牛池灣',
                en: 'Ngau Chi Wan',
            },
            inherits: [ "WongTaiSinDistrict" ]
        },

        // KwunTongDistrict
        "PingShek" => {
            name: {
                zh: '坪石',
                en: 'Ping Shek',
            },
            inherits: [ "KwunTongDistrict" ]
        },
        "KowloonBay" => {
            name: {
                zh: '九龍灣',
                en: 'Kowloon Bay',
            },
            inherits: [ "KwunTongDistrict" ]
        },
        "NgauTauKok" => {
            name: {
                zh: '牛頭角',
                en: 'Ngau Tau Kok',
            },
            inherits: [ "KwunTongDistrict" ]
        },
        "JordanValley" => {
            name: {
                zh: '佐敦谷',
                en: 'Jordan Valley',
            },
            inherits: [ "KwunTongDistrict" ]
        },
        "KwunTong" => {
            name: {
                zh: '觀塘',
                en: 'Kwun Tong',
            },
            inherits: [ "KwunTongDistrict" ]
        },
        "SauMauPing" => {
            name: {
                zh: '秀茂坪',
                en: 'Sau Mau Ping',
            },
            inherits: [ "KwunTongDistrict" ]
        },
        "LamTin" => {
            name: {
                zh: '藍田',
                en: 'Lam Tin',
            },
            inherits: [ "KwunTongDistrict" ]
        },
        "YauTong" => {
            name: {
                zh: '油塘',
                en: 'Yau Tong',
            },
            inherits: [ "KwunTongDistrict" ]
        },
        "LeiYueMun" => {
            name: {
                zh: '鯉魚門',
                en: 'Lei Yue Mun',
            },
            inherits: [ "KwunTongDistrict" ]
        },

        // KwaiTsingDistrict
        "KwaiChung" => {
            name: {
                zh: '葵涌',
                en: 'Kwai Chung',
            },
            inherits: [ "KwaiTsingDistrict" ]
        },
        "TsingYi" => {
            name: {
                zh: '青衣',
                en: 'Tsing Yi',
            },
            inherits: [ "KwaiTsingDistrict" ]
        },

        // TsuenWanDistrict
        "TsuenWan" => {
            name: {
                zh: '荃灣',
                en: 'Tsuen Wan',
            },
            inherits: [ "TsuenWanDistrict" ]
        },
        "LeiMukShue" => {
            name: {
                zh: '梨木樹',
                en: 'Lei Muk Shue',
            },
            inherits: [ "TsuenWanDistrict" ]
        },
        "TingKau" => {
            name: {
                zh: '汀九',
                en: 'Ting Kau',
            },
            inherits: [ "TsuenWanDistrict" ]
        },
        "ShamTseng" => {
            name: {
                zh: '深井',
                en: 'Sham Tseng',
            },
            inherits: [ "TsuenWanDistrict" ]
        },
        "TsingLungTau" => {
            name: {
                zh: '青龍頭',
                en: 'Tsing Lung Tau',
            },
            inherits: [ "TsuenWanDistrict" ]
        },
        "MaWan" => {
            name: {
                zh: '馬灣',
                en: 'Ma Wan',
            },
            inherits: [ "TsuenWanDistrict" ]
        },
        "SunnyBay" => {
            name: {
                zh: '欣澳',
                en: 'Sunny Bay',
            },
            inherits: [ "TsuenWanDistrict" ]
        },

        // TuenMunDistrict
        "TaiLamChung" => {
            name: {
                zh: '大欖涌',
                en: 'Tai Lam Chung',
            },
            inherits: [ "TuenMunDistrict" ]
        },
        "SoKwunWat" => {
            name: {
                zh: '掃管笏',
                en: 'So Kwun Wat',
            },
            inherits: [ "TuenMunDistrict" ]
        },
        "TuenMun" => {
            name: {
                zh: '屯門',
                en: 'Tuen Mun',
            },
            inherits: [ "TuenMunDistrict" ]
        },
        "LamTei" => {
            name: {
                zh: '藍地',
                en: 'Lam Tei',
            },
            inherits: [ "TuenMunDistrict" ]
        },

        // YuenLongDistrict
        "HungShuiKiu" => {
            name: {
                zh: '洪水橋',
                en: 'Hung Shui Kiu',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "HaTsuen" => {
            name: {
                zh: '廈村',
                en: 'Ha Tsuen',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "LauFauShan" => {
            name: {
                zh: '流浮山',
                en: 'Lau Fau Shan',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "TinShuiWai" => {
            name: {
                zh: '天水圍',
                en: 'Tin Shui Wai',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "YuenLong" => {
            name: {
                zh: '元朗',
                en: 'Yuen Long',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "SanTin" => {
            name: {
                zh: '新田',
                en: 'San Tin',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "LokMaChau" => {
            name: {
                zh: '落馬洲',
                en: 'Lok Ma Chau',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "KamTin" => {
            name: {
                zh: '錦田',
                en: 'Kam Tin',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "ShekKong" => {
            name: {
                zh: '石崗',
                en: 'Shek Kong',
            },
            inherits: [ "YuenLongDistrict" ]
        },
        "PatHeung" => {
            name: {
                zh: '八鄉',
                en: 'Pat Heung',
            },
            inherits: [ "YuenLongDistrict" ]
        },

        // NorthDistrict
        "Fanling" => {
            name: {
                zh: '粉嶺',
                en: 'Fanling',
            },
            inherits: [ "NorthDistrict" ]
        },
        "LuenWoHui" => {
            name: {
                zh: '聯和墟',
                en: 'Luen Wo Hui',
            },
            inherits: [ "NorthDistrict" ]
        },
        "SheungShui" => {
            name: {
                zh: '上水',
                en: 'Sheung Shui',
            },
            inherits: [ "NorthDistrict" ]
        },
        "ShekWuHui" => {
            name: {
                zh: '石湖墟',
                en: 'Shek Wu Hui',
            },
            inherits: [ "NorthDistrict" ]
        },
        "ShaTauKok" => {
            name: {
                zh: '沙頭角',
                en: 'Sha Tau Kok',
            },
            inherits: [ "NorthDistrict" ]
        },
        "LukKeng" => {
            name: {
                zh: '鹿頸',
                en: 'Luk Keng',
            },
            inherits: [ "NorthDistrict" ]
        },
        "WuKauTang" => {
            name: {
                zh: '烏蛟騰',
                en: 'Wu Kau Tang',
            },
            inherits: [ "NorthDistrict" ]
        },

        // TaiPoDistrict
        "TaiPoMarket" => {
            name: {
                zh: '大埔墟',
                en: 'Tai Po Market',
            },
            inherits: [ "TaiPoDistrict" ]
        },
        "TaiPo" => {
            name: {
                zh: '大埔',
                en: 'Tai Po',
            },
            inherits: [ "TaiPoDistrict" ]
        },
        "TaiPoKau" => {
            name: {
                zh: '大埔滘',
                en: 'Tai Po Kau',
            },
            inherits: [ "TaiPoDistrict" ]
        },
        "TaiMeiTuk" => {
            name: {
                zh: '大尾篤',
                en: 'Tai Mei Tuk',
            },
            inherits: [ "TaiPoDistrict" ]
        },
        "ShuenWan" => {
            name: {
                zh: '船灣',
                en: 'Shuen Wan',
            },
            inherits: [ "TaiPoDistrict" ]
        },
        "CheungMukTau" => {
            name: {
                zh: '樟木頭',
                en: 'Cheung Muk Tau',
            },
            inherits: [ "TaiPoDistrict" ]
        },
        "KeiLingHa" => {
            name: {
                zh: '企嶺下',
                en: 'Kei Ling Ha',
            },
            inherits: [ "TaiPoDistrict" ]
        },

        // ShaTinDistrict
        "TaiWai" => {
            name: {
                zh: '大圍',
                en: 'Tai Wai',
            },
            inherits: [ "ShaTinDistrict" ]
        },
        "ShaTin" => {
            name: {
                zh: '沙田',
                en: 'Sha Tin',
            },
            inherits: [ "ShaTinDistrict" ]
        },
        "FoTan" => {
            name: {
                zh: '火炭',
                en: 'Fo Tan',
            },
            inherits: [ "ShaTinDistrict" ]
        },
        "MaLiuShui" => {
            name: {
                zh: '馬料水',
                en: 'Ma Liu Shui',
            },
            inherits: [ "ShaTinDistrict" ]
        },
        "WuKaiSha" => {
            name: {
                zh: '烏溪沙',
                en: 'Wu Kai Sha',
            },
            inherits: [ "ShaTinDistrict" ]
        },
        "MaOnShan" => {
            name: {
                zh: '馬鞍山',
                en: 'Ma On Shan',
            },
            inherits: [ "ShaTinDistrict" ]
        },

        // SaiKungDistrict
        "ClearWaterBay" => {
            name: {
                zh: '清水灣',
                en: 'Clear Water Bay',
            },
            inherits: [ "SaiKungDistrict" ]
        },
        "SaiKung" => {
            name: {
                zh: '西貢',
                en: 'Sai Kung',
            },
            inherits: [ "SaiKungDistrict" ]
        },
        "TaiMongTsai" => {
            name: {
                zh: '大網仔',
                en: 'Tai Mong Tsai',
            },
            inherits: [ "SaiKungDistrict" ]
        },
        "TseungKwanO" => {
            name: {
                zh: '將軍澳',
                en: 'Tseung Kwan O',
            },
            inherits: [ "SaiKungDistrict" ]
        },
        "HangHau" => {
            name: {
                zh: '坑口',
                en: 'Hang Hau',
            },
            inherits: [ "SaiKungDistrict" ]
        },
        "TiuKengLeng" => {
            name: {
                zh: '調景嶺',
                en: 'Tiu Keng Leng',
            },
            inherits: [ "SaiKungDistrict" ]
        },
        "MaYauTong" => {
            name: {
                zh: '馬游塘',
                en: 'Ma Yau Tong',
            },
            inherits: [ "SaiKungDistrict" ]
        },

        // IslandsDistrict
        "CheungChau" => {
            name: {
                zh: '長洲',
                en: 'Cheung Chau',
            },
            inherits: [ "IslandsDistrict" ]
        },
        "PengChau" => {
            name: {
                zh: '坪洲',
                en: 'Peng Chau',
            },
            inherits: [ "IslandsDistrict" ]
        },
        "LantauIsland" => {
            name: {
                zh: '大嶼山',
                en: 'Lantau Island',
            },
            inherits: [ "IslandsDistrict" ]
        },
        "TungChung" => {
            name: {
                zh: '東涌',
                en: 'Tung Chung',
            },
            inherits: [ "IslandsDistrict" ]
        },
        "LammaIsland" => {
            name: {
                zh: '南丫島',
                en: 'Lamma Island',
            },
            inherits: [ "IslandsDistrict" ]
        },
    ];
}
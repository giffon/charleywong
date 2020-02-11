package charleywong;

import sys.io.File;
using Lambda;

@:structInit
class Tag {
    public final name:MultiLangString;
    @:optional public final description:MultiLangString;
    @:optional public final inherits:Array<Tag>;

    @:optional public var id(get, null):String;
    function get_id() return id != null ? id : id = [for (k => v in tags) if (v == this) k][0];

    static function main():Void {
        var ids = [for (t in tags) t.id];
        ids.sort(Reflect.compare);
        var schema = {
            "$id": "Tag.json",
            "type": "string",
            "enum": ids
        };
        File.saveContent("data/schema/Tag.json", haxe.Json.stringify(schema, null, "  "));
    }

    static public var tags(get, null):Map<String, Tag>;
    static public function get_tags() return tags != null ? tags : tags = {
        var m = new Map();
        for (tName in Type.getClassFields(Tag)) {
            var f = Reflect.field(Tag, tName);
            if (Std.is(f, Tag))
                m[tName] = f;
        }
        m;
    }

    static public function expend(ts:Array<Tag>):Array<Tag> {
        var r = new Map();
        for (t in ts) {
            r[t.id] = t;
            if (t.inherits != null)
                expend(t.inherits).iter(function(t) r[t.id] = t);
        }
        return r.array();
    }

    static public final shop:Tag = {
        name: {
            en: "shop",
            zh: "店鋪",
        }
    }

    static public final organization:Tag = {
        name: {
            en: "organization",
            zh: "組織",
        }
    }

    static public final publicfigure:Tag = {
        name: {
            en: "public figure",
            zh: "知名人士",
        }
    }

    static public final media:Tag = {
        name: {
            en: "media",
            zh: "媒體",
        }
    }

    static public final wedding:Tag = {
        name: {
            en: "wedding",
            zh: "婚禮",
        }
    }

    static public final hardware:Tag = {
        name: {
            en: "hardware",
            zh: "五金",
        },
        inherits: [shop]
    }

    static public final clothing:Tag = {
        name: {
            en: "clothing",
            zh: "衣物",
        },
        inherits: [shop]
    }

    static public final animal:Tag = {
        name: {
            en: "animal",
            zh: "動物",
        },
    }

    static public final footwear:Tag = {
        name: {
            en: "footwear",
            zh: "鞋類",
        },
        inherits: [clothing]
    }

    static public final printing:Tag = {
        name: {
            en: "printing",
            zh: "印刷",
        },
        inherits: [shop]
    }

    static public final printing3d:Tag = {
        name: {
            en: "3D printing",
            zh: "3D列印",
        },
        inherits: [shop]
    }

    static public final currency:Tag = {
        name: {
            en: "currency",
            zh: "貨幣",
        }
    }

    static public final bridal:Tag = {
        name: {
            en: "bridal",
            zh: "婚紗/禮服",
        },
        inherits: [
            wedding,
            shop,
            clothing,
        ]
    }

    static public final florist:Tag = {
        name: {
            en: "florist",
            zh: "花店/花匠",
        }
    };

    static public final artist:Tag = {
        name: {
            en: "artist",
            zh: "藝術家",
        },
        inherits: [publicfigure]
    };

    static public final tattoo:Tag = {
        name: {
            en: "tattoo",
            zh: "紋身",
        }
    }

    static public final handyman:Tag = {
        name: {
            en: "handyman",
            zh: "水電工",
        },
        inherits: [shop]
    }

    static public final salon:Tag = {
        name: {
            en: "barber/salon",
            zh: "理髮/沙龍",
        }
    }

    static public final book:Tag = {
        name: {
            en: "book",
            zh: "書籍",
        },
    };

    static public final sport:Tag = {
        name: {
            en: "sport",
            zh: "運動",
        },
    };

    static public final fitness:Tag = {
        name: {
            en: "fitness",
            zh: "健身",
        },
        inherits: [sport]
    };

    static public final music:Tag = {
        name: {
            en: "music",
            zh: "音樂",
        }
    };

    static public final photography:Tag = {
        name: {
            en: "photography",
            zh: "攝影",
        }
    }

    static public final photographer:Tag = {
        name: {
            en: "photographer/videographer",
            zh: "攝影師",
        },
        inherits: [photography, artist]
    };

    static public final emcee:Tag = {
        name: {
            en: "MC",
            zh: "司儀",
        }
    }

    static public final makeup:Tag = {
        name: {
            en: "makeup",
            zh: "化妝",
        }
    }

    static public final food:Tag = {
        name: {
            en: "food & beverage",
            zh: "食物/飲品",
        }
    }

    static public final accessories:Tag = {
        name: {
            en: "accessories",
            zh: "飾物",
        },
        inherits: [shop]
    }

    static public final transport:Tag = {
        name: {
            en: "transport",
            zh: "運輸",
        }
    }

    static public final technology:Tag = {
        name: {
            en: "technology",
            zh: "科技",
        }
    }

    static public final computer:Tag = {
        name: {
            en: "computer",
            zh: "電臘",
        },
        inherits: [technology, shop]
    }

    static public final phone:Tag = {
        name: {
            en: "phone",
            zh: "電話",
        },
        inherits: [technology, shop]
    }

    static public final webdev:Tag = {
        name: {
            en: "web design/development",
            zh: "網頁設計/開發",
        },
        inherits: [technology, shop]
    }

    static public final mobiledev:Tag = {
        name: {
            en: "mobile app design/development",
            zh: "手機應用程式設計/開發",
        },
        inherits: [technology, shop]
    }

    static public final advertisingAgency:Tag = {
        name: {
            en: "advertising agency",
            zh: "廣告代理",
        },
        inherits: [shop]
    }

    static public final medical:Tag = {
        name: {
            en: "medical",
            zh: "醫療",
        }
    }

    static public final pharmacy:Tag = {
        name: {
            en: "pharmacy",
            zh: "藥房",
        },
        inherits: [
            medical,
            shop
        ]
    }

    static public final automobile:Tag = {
        name: {
            en: "automobile",
            zh: "汽車",
        },
        inherits: [
            transport,
            shop
        ]
    }

    static public final interior:Tag = {
        name: {
            en: "interior design",
            zh: "室內裝修設計",
        },
        inherits: [shop]
    }

    static public final adult:Tag = {
        name: {
            en: "adult only",
            zh: "十八禁"
        }
    };

    static public final antique:Tag = {
        name: {
            en: "antique",
            zh: "古董"
        },
        inherits: [shop]
    };

    static public final job:Tag = {
        name: {
            en: "job hunting/career coaching",
            zh: "搵工/職業指導"
        }
    }

    static public final woodworking:Tag = {
        name: {
            en: "woodworking/carpentry",
            zh: "木工"
        },
        inherits: [shop]
    }
}
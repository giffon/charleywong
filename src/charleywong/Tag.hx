package charleywong;

@:structInit
class Tag {
    public final name:MultiLangString;
    @:optional public final description:MultiLangString;
    @:optional public final inherits:Array<Tag>;

    @:optional public var id(get, null):String;
    function get_id() return id != null ? id : id = [for (k => v in tags) if (v == this) k][0];

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

    static public final shop:Tag = {
        name: [
            en => "shop",
            zh => "店鋪"
        ]
    }

    static public final organization:Tag = {
        name: [
            en => "organization",
            zh => "組織"
        ]
    }

    static public final publicfigure:Tag = {
        name: [
            en => "public figure",
            zh => "知名人士"
        ]
    }

    static public final media:Tag = {
        name: [
            en => "media",
            zh => "媒體"
        ]
    }

    static public final wedding:Tag = {
        name: [
            en => "wedding",
            zh => "婚禮"
        ]
    }

    static public final clothing:Tag = {
        name: [
            en => "clothing",
            zh => "衣物"
        ],
        inherits: [shop]
    }

    static public final printing:Tag = {
        name: [
            en => "printing",
            zh => "印刷"
        ]
    }

    static public final bridal:Tag = {
        name: [
            en => "bridal",
            zh => "婚紗/禮服"
        ],
        inherits: [
            wedding,
            shop,
            clothing,
        ]
    }

    static public final florist:Tag = {
        name: [
            en => "florist",
            zh => "花店/花匠"
        ]
    };

    static public final artist:Tag = {
        name: [
            en => "artist",
            zh => "藝術家"
        ],
        inherits: [publicfigure]
    };

    static public final book:Tag = {
        name: [
            en => "book",
            zh => "書籍"
        ],
    };

    static public final music:Tag = {
        name: [
            en => "music",
            zh => "音樂"
        ]
    };

    static public final photographer:Tag = {
        name: [
            en => "photographer/videographer",
            zh => "攝影師"
        ]
    };

    static public final emcee:Tag = {
        name: [
            en => "MC",
            zh => "司儀"
        ]
    }

    static public final makeup:Tag = {
        name: [
            en => "makeup",
            zh => "化妝"
        ]
    }

    static public final food:Tag = {
        name: [
            en => "food & beverage",
            zh => "食物/飲品"
        ]
    }

    static public final accessories:Tag = {
        name: [
            en => "accessories",
            zh => "飾物"
        ],
        inherits: [shop]
    }

    static public final transport:Tag = {
        name: [
            en => "transport",
            zh => "運輸"
        ]
    }

    static public final technology:Tag = {
        name: [
            en => "technology",
            zh => "科技"
        ]
    }

    static public final medical:Tag = {
        name: [
            en => "medical",
            zh => "醫療"
        ]
    }
}
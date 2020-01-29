package charleywong;

@:structInit
class Tag {
    final name:MultiLangString;
    @:optional final description:MultiLangString;
    @:optional final inherits:Array<Tag>;

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

    static public final wedding:Tag = {
        name: [
            en => "wedding",
            zh => "婚禮"
        ]
    }

    static public final bridal:Tag = {
        name: [
            en => "bridal",
            zh => "婚紗/禮服"
        ],
        inherits: [
            wedding
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

    static public final makeupArtist:Tag = {
        name: [
            en => "makeup artist",
            zh => "化妝"
        ]
    }

    static public final food:Tag = {
        name: [
            en => "food & beverage",
            zh => "食物/飲品"
        ]
    }
}
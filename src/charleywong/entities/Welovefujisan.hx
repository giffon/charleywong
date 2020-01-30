package charleywong.entities;

class Welovefujisan implements Entity {
    public final id = "welovefujisan";
    public final name = [
        zh => "最愛富士山",
        en => "We Love FUJI San"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.welovefujisan.store"
        },
        {
            url: "https://www.facebook.com/welovefujisan/",
            meta: [
                "id" => "528895380949474",
                "about" => "點解係最愛富士山呢?\n好多朋友都會問 : 點解會係點解係最愛富士山呢?富士山???其實我同好多好多朋友, 包括大家, 都係對富士山會有種莫名嘅喜好... 情意結... 同好想擁有一切同富士山相關嘅物",
                "categories" => [
                    "Shopping & retail"
                ],
                "addr" => "九龍",
                "area" => "Hong Kong",
                "email" => "welovefujisan@gmail.com",
                "tel" => "91203795"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/welovefujisan/photos/a.537799990059013/755386431633700/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


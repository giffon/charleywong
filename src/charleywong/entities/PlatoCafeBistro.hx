package charleywong.entities;

class PlatoCafeBistro implements Entity {
    public final id = "platocafebistro";
    public final name = [
        en => "Plato Cafe & Bistro"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/platocafebistro/",
            meta: [
                "id" => "1769645643316467",
                "about" => "分店\nhttps://www.facebook.com/plato.yaumatei/",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "油麻地彌敦道483-485A號2樓",
                "area" => "Hong Kong",
                "email" => "platocafebistro@gmail.com",
                "tel" => "97875976"
            ]
        },
        {
            url: "https://www.facebook.com/plato.woosung/",
            meta: [
                "id" => "535061220224752",
                "about" => "Plato Cafe Bistro乃追求用心製作好食品、咖啡及飲品給每一位客人，餐廳主要提供意式食品如Pasta、Pizza及Risotto，還有其他如優質美國安格斯肉眼牛排、羊排、法國春雞等美食。",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "九龍佐敦吳松街186號至188號地下",
                "area" => "Hong Kong"
            ]
        },
        {
            url: "https://www.facebook.com/plato.yaumatei/",
            meta: [
                "id" => "505136319562074",
                "about" => "油麻地彌敦道448-452A號眾坊街文豪閣地下D舖 (中華書局旁)\nShop D, G/F Man Hoo Court, 448-452A Nathan Road, Yau Ma Tei, Yau Ma Tei, Hong Kong",
                "categories" => [
                    "Continental restaurant",
                    "Coffee shop"
                ],
                "addr" => "Yaumatei",
                "area" => "Hong Kong",
                "email" => "plato_yaumatei@yahoo.com",
                "tel" => "23888269"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/platocafebistro/photos/a.1772452006369164/2570766519871038/"
        },
        {
            url: "https://www.facebook.com/platocafebistro/posts/2574003729547317"
        },
        {
            url: "https://www.facebook.com/plato.woosung/photos/a.577624569301750/931970053867198/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


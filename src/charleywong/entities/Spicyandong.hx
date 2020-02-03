package charleywong.entities;

class Spicyandong implements Entity {
    public final id = "spicyandong";
    public final name = [
        zh => "辛安東元祖奶奶雞"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/spicyandong/",
            meta: [
                "id" => "574000336002867",
                "about" => "旺角店地址 : 九龍旺角白布街二十號地下\nTel : 2332-0823",
                "categories" => [
                    "Korean restaurant"
                ],
                "addr" => "旺角白布街20號地下",
                "area" => "Mong Kok",
                "tel" => "23320823"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/spicyandong/posts/2535019863234228"
        },
        {
            url: "https://www.facebook.com/spicyandong/photos/a.577675198968714/2428229010579981/"
        },
        {
            url: "https://www.facebook.com/spicyandong/posts/2523270204409194"
        },
        {
            url: "https://www.facebook.com/spicyandong/posts/2199968943405990"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


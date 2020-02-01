package charleywong.entities;

class Asyuwish implements Entity {
    public final id = "asyuwish";
    public final name = [
        zh => "魚願以嚐",
        en => "As Yu Wish Sushi"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://asyuwishsushi.com"
        },
        {
            url: "https://www.facebook.com/asyuwish/",
            meta: [
                "id" => "356623244910143",
                "about" =>
                "《魚願以嚐》\n⎈Dreams come true for us!⎈\n⎈ 日本串燒店 Japanese Skewer & Ramen Restaurant at Quarry Bay🍢🍻\n🚊鰂魚涌站Exit B\n📍英皇道933號御皇台地下11號舖(英麗閣停車場/759後)",
                "categories" => [
                    "Ramen Restaurant"
                ],
                "email" => "asyuwishsushi@gmail.com",
                "tel" => "27881228"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/asyuwish/posts/572250666680732"
        },
        {
            url: "https://www.facebook.com/asyuwish/posts/606789736560158"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


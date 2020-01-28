package charleywong.entities;

class Darkcalligrapher implements Entity {
    public final id = "dark.calligrapher";
    public final name = [
        zh => "練黑龍"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dark.calligrapher/",
            meta: [
                "id" => "1511141915843225",
                "about" => "全職·字·畫·創作·廢中\n－\n積極挑戰 隨緣樂命...\n\n\nSee more",
                "categories" => [
                    "Artist",
                    "Art",
                    "Designer"
                ],
                "email" => "k.kwan215@gmail.com",
                "tel" => "64393907"
            ]
        },
        {
            url: "https://www.instagram.com/dark.calligrapher/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dark.calligrapher/photos/a.1538761349747948/2285402445083831/"
        },
        {
            url: "https://www.facebook.com/dark.calligrapher/posts/2262780484012694"
        }
    ];
}


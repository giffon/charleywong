package charleywong.entities;

class Luipuihey implements Entity {
    public final id = "luipuihey";
    public final name = [
        zh => "雷霈晞",
        en => "Dorcas"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/luipuihey/",
            meta: [
                "id" => "2418043524875546",
                "about" => "香港填詞人、作者、音樂人。",
                "categories" => [
                    "Musician",
                    "Author"
                ],
                "email" => "luipuihey@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/luipuihey/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/luipuihey/videos/2566494746714081/"
        },
        {
            url: "https://www.facebook.com/luipuihey/posts/2872776856068875"
        },
        {
            url: "https://www.facebook.com/luipuihey/videos/1299789636849489/"
        }
    ];
    public final tags:Array<Tag> = [];
}


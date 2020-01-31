package charleywong.entities;

class StevenTangTszChun implements Entity {
    public final id = "StevenTangTszChun";
    public final name = [
        zh => "鄧梓俊",
        en => "Steven Tang Art"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UC6J4gyG5Xv6bQZubKRsZnXw"
        },
        {
            url: "https://www.facebook.com/StevenTangTszChun/",
            meta: [
                "id" => "115164486585700",
                "about" => "Steven Tang 鄧梓俊，年僅20歲的香港網絡畫家，擅於運用木顔色及乾粉彩創作寫實主義的作品，主題包括人像、食物、動物等等。",
                "categories" => [
                    "Artist",
                    "Arts and entertainment"
                ],
                "email" => "ttchundrawing@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/steventang.art/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/StevenTangTszChun/photos/a.124636138971868/124636038971878/"
        },
        {
            url: "https://www.facebook.com/StevenTangTszChun/photos/a.117793192989496/117792859656196/"
        },
        {
            url: "https://www.facebook.com/StevenTangTszChun/photos/a.124636138971868/142232590545556/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


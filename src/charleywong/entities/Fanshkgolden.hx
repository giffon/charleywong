package charleywong.entities;

class Fanshkgolden implements Entity {
    public final id = "fans.hkgolden";
    public final name = [
        zh => "高登討論區",
        en => "HKGolden"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkgolden.com"
        },
        {
            url: "https://www.facebook.com/fans.hkgolden/",
            meta: [
                "id" => "116178588425696",
                "about" => "高登新聞部 http://www.facebook.com/hkgolden.news",
                "categories" => [
                    "Computer & Internet website",
                    "News and media website",
                    "Gaming video creator"
                ],
                "email" => "marketing@alivemedia.com.hk",
                "tel" => "52294470"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fans.hkgolden/photos/a.757910007585881/2489211241122407/"
        },
        {
            url: "https://www.facebook.com/fans.hkgolden/posts/2638980172812179"
        },
        {
            url: "https://www.facebook.com/fans.hkgolden/posts/2425349464175252"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


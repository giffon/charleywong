package charleywong.entities;

class CatSociety implements Entity {
    public final id = "CatSociety";
    public final name = [
        zh => "香港群貓會"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CatSociety/",
            meta: [
                "about" => "香港群貓會於2007年7月成立，並於2007年10月1日起成為香港特別行政區認可之註冊慈善團體。 官方網站: http://www.catsocietyhk.org/",
                "categories" => [
                    "Animal shelter",
                    "Charitable organisation"
                ],
                "addr" => "香港土瓜灣浙江街26號地下",
                "area" => "Kowloon, Hong Kong",
                "email" => "info@catsocietyhk.org",
                "id" => "27387977553"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CatSociety/photos/a.79706852553/10156287683657554/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}


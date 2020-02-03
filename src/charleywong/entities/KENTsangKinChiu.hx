package charleywong.entities;

class KENTsangKinChiu implements Entity {
    public final id = "KENTsangKinChiu";
    public final name = [
        en => "KEN Tsang",
        zh => "曾健超"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KENTsangKinChiu/",
            meta: [
                "id" => "603037573183215",
                "about" => "公民抗命 無畏無懼！",
                "categories" => [
                    "Public figure"
                ],
                "email" => "2016kentsang@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/kentsangkinchiu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KENTsangKinChiu/posts/1454180744735556"
        },
        {
            url: "https://www.facebook.com/KENTsangKinChiu/posts/1354114244742207"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


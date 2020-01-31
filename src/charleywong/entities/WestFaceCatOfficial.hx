package charleywong.entities;

class WestFaceCatOfficial implements Entity {
    public final id = "WestFaceCatOfficial";
    public final name = [
        zh => "西面貓"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/WestFaceCatOfficial/",
            meta: [
                "id" => "733133226862832",
                "about" => "�定期更新�\n藉「西面貓」記錄生活鎖碎，反映都市人處事的常態，道出人生的總總感悟，希望令人有所啟發。\n�插畫師: #CircleGuitar\n�Facebook: #西面貓",
                "categories" => [
                    "Author"
                ],
                "email" => "circleguitar@live.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WestFaceCatOfficial/photos/a.860170280825792/1333598236816325/"
        },
        {
            url: "https://www.facebook.com/WestFaceCatOfficial/photos/a.733156420193846/1317819048394244/"
        },
        {
            url: "https://www.facebook.com/WestFaceCatOfficial/posts/1454120898097391"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        book
    ];
}


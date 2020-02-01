package charleywong.entities;

class Jason implements Entity {
    public final id = "HUNGGY816";
    public final name = [
        en => "Jason"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://hunggy.com"
        },
        {
            url: "https://www.facebook.com/HUNGGY816/",
            meta: [
                "id" => "499883930075999",
                "about" => "自由自在的人生，何其妙哉？工作聯絡：wow.revery@gmail.com (Crystal & Joey)一般查詢：info@hunggy.com",
                "categories" => [
                    "Gaming video creator",
                    "Arts and entertainment"
                ],
                "email" => "info@hunggy.com"
            ]
        },
        {
            url: "https://www.instagram.com/Hunggy9527/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HUNGGY816/posts/2837900879607614"
        },
        {
            url: "https://www.facebook.com/HUNGGY816/photos/a.499916746739384/2535671173163921/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure,
        media
    ];
}


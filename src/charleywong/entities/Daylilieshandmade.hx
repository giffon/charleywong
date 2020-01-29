package charleywong.entities;

class Daylilieshandmade implements Entity {
    public final id = "daylilieshandmade";
    public final name = [
        zh => "忘憂手作社"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/daylilieshandmade/",
            meta: [
                "about" => "品牌介紹\n忘憂手作社 daylilies handmade\n<<生活難熬 手作忘憂>>...\n\n\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Accessories"
                ],
                "email" => "daylilieshandmade@gmail.com",
                "tel" => "61402317",
                "id" => "740400936147420"
            ]
        },
        {
            url: "https://www.instagram.com/daylilies_handmade/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/daylilieshandmade/photos/a.745193055668208/1827867650734071/"
        },
        {
            url: "https://www.facebook.com/daylilieshandmade/posts/2001018713418963"
        }
    ];
    public final tags:Array<Tag> = [];
}


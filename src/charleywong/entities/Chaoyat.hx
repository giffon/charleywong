package charleywong.entities;

class Chaoyat implements Entity {
    public final id = "chaoyat";
    public final name = [
        zh => "草日漫畫"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chaoyat/",
            meta: [
                "id" => "179143265443768",
                "about" => "草日,漫畫/插畫創作人,約稿:chaoyatcomics@gmail.com\n\n「草日雜貨」,草日 x Mini Beanie 全新合作的系列,若查詢草日產品及有關推廣活動, 可聯絡:...\n\n\nSee more",
                "categories" => [
                    "Author"
                ],
                "email" => "chaoyatcomics@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chaoyat/posts/2641776402513763"
        },
        {
            url: "https://www.facebook.com/chaoyat/posts/2608299279194809"
        },
        {
            url: "https://www.facebook.com/chaoyat/posts/2591732420851495"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


package charleywong.entities;

class Seriousbyshu implements Entity {
    public final id = "seriousbyshu";
    public final name = [
        en => "Seriousbyshu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/seriousbyshu/",
            meta: [
                "about" => "喜歡大自然,以清新感覺創作飾物。務求每一件作品都是獨一無二而且充滿個性\n100% handcrafted and made in Hong Kong.\nIf any, please inbox or leave comments",
                "categories" => [
                    "Design & fashion"
                ],
                "addr" => "葵涌青山公路303號iplace 16樓17室",
                "area" => "Hong Kong",
                "email" => "shu224@hotmail.com",
                "tel" => "95372796",
                "id" => "305375612969750"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/seriousbyshu/posts/1437454779761822"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


package charleywong.entities;

class AcesMagic implements Entity {
    public final id = "acesmagichk";
    public final name = [
        en => "Ace\'s Magic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/acesmagichk/",
            meta: [
                "id" => "972683332758750",
                "about" => "魔術及其他娛樂銷售和服務",
                "categories" => [
                    "Performing arts",
                    "Magician",
                    "Retail company"
                ],
                "tel" => "66018434"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/acesmagichk/posts/3349665901727136"
        },
        {
            url: "https://www.facebook.com/acesmagichk/posts/3351721794854880"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


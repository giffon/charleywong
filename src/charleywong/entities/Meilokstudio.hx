package charleywong.entities;

class Meilokstudio implements Entity {
    public final id = "meilokstudio";
    public final name = [
        zh => "美樂照相館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/meilokstudio/",
            meta: [
                "id" => "520894224932497",
                "about" => "經典回憶數不盡\n把握時機留倩影\n...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Camera/photo",
                    "Wedding planning service",
                    "Photography & videography"
                ],
                "addr" => "觀塘偉業街181號盈達商業大廈4樓A",
                "area" => "Hong Kong",
                "tel" => "92238538"
            ]
        },
        {
            url: "https://www.instagram.com/Mei_lok_studio/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/meilokstudio/posts/943964559292126"
        },
        {
            url: "https://www.facebook.com/meilokstudio/posts/944800312541884"
        }
    ];
}


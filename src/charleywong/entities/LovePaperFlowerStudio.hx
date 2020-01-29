package charleywong.entities;

class LovePaperFlowerStudio implements Entity {
    public final id = "lovepaperflowerstudio";
    public final name = [
        en => "Love Paper Flower Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.lovepaperflowerstudio.com"
        },
        {
            url: "https://www.facebook.com/lovepaperflowerstudio/",
            meta: [
                "id" => "159337064770938",
                "about" => "愛。紙。花。舍\nCapturing Flower Blossoms in Life\n• Hong Kong Based Photographer with film•",
                "categories" => [
                    "Media",
                    "Photographer"
                ],
                "email" => "lovepaperflowerstudio@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lovepaperflowerstudio/photos/a.311205612917415/426942784677030/"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class AdamPunComicAirtist implements Entity {
    public final id = "AdamPun.ComicAirtist";
    public final name = [
        zh => "潘子匡",
        en => "AdamPun"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AdamPun.ComicAirtist/",
            meta: [
                "id" => "131187377412730",
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AdamPun.ComicAirtist/photos/a.613681192496677/629149514283178/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

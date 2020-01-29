package charleywong.entities;

class Tinyeahtinyeah implements Entity {
    public final id = "tinyeahtinyeah";
    public final name = [
        zh => "田嘢"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tinyeahtinyeah/",
            meta: [
                "id" => "666955500171022",
                "categories" => [
                    "Agricultural service"
                ],
                "tel" => "52858163"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tinyeahtinyeah/posts/1251982818334951"
        },
        {
            url: "https://www.facebook.com/tinyeahtinyeah/photos/a.668005263399379/1200920043441229/"
        }
    ];
    public final tags:Array<Tag> = [];
}


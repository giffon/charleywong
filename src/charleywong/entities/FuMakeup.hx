package charleywong.entities;

class FuMakeup implements Entity {
    public final id = "fumakeup";
    public final name = [
        en => "Fu Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fumakeup/",
            meta: [
                "id" => "167750946614006",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "fumakeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fumakeup/photos/a.619223474800082/2544511228937954/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding,
    ];
}


package charleywong.entities;

class SXFPrint implements Entity {
    public final id = "sxfprint";
    public final name = [
        en => "SXF Print"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sxfprint/",
            meta: [
                "id" => "104420731084366",
                "categories" => [
                    "Business service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sxfprint/photos/a.112395453620227/119195566273549/"
        },
        {
            url: "https://www.facebook.com/sxfprint/photos/a.112395453620227/118681112991661/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


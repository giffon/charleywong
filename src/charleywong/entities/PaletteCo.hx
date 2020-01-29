package charleywong.entities;

class PaletteCo implements Entity {
    public final id = "paletteco";
    public final name = [
        en => "Palette Co."
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.palette-co.com"
        },
        {
            url: "https://www.facebook.com/paletteco/",
            meta: [
                "id" => "136197673075538",
                "about" => "Wedding Planning Service 婚禮統籌服務",
                "categories" => [
                    "Wedding planning service"
                ],
                "addr" => "Rm 1204, 12/F, Shiu Fat Industrial Building, 139-141 Wai Yip Street",
                "area" => "Kung Tong, Hong Kong",
                "email" => "info@palette-co.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/paletteco/photos/a.136356263059679/3024467830915160/"
        }
    ];
    public final tags:Array<Tag> = [];
}


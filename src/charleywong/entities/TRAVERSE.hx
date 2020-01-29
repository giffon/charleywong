package charleywong.entities;

class TRAVERSE implements Entity {
    public final id = "traverse.hk";
    public final name = [
        en => "TRAVERSE"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/traverse.hk/",
            meta: [
                "about" => "手作 / 設計 / 輕量化裝備 / 登山露營 / 菲林 / Fujifilm instax WIDE 300 / Fujifilm Klasse W",
                "categories" => [
                    "Outdoor and sporting goods company",
                    "Mountain",
                    "Outdoor equipment shop"
                ],
                "email" => "traversehk@gmail.com",
                "id" => "415568095274023"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/traverse.hk/photos/a.695545833942913/1470485706448918/"
        }
    ];
    public final tags:Array<Tag> = [];
}


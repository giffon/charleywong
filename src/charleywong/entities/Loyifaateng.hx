package charleywong.entities;

class Loyifaateng implements Entity {
    public final id = "loyifaateng";
    public final name = [
        zh => "老二花廳"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/loyifaateng/",
            meta: [
                "about" => "老二的情婦",
                "categories" => [
                    "Theme restaurant",
                    "Coffee shop",
                    "Tea room"
                ],
                "addr" => "旺角山東街80-82號2樓",
                "area" => "Mong Kok",
                "email" => "loyifaateng@gmail.com",
                "tel" => "56673653"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/loyifaateng/photos/a.231078303923039/986700005027528/"
        },
        {
            url: "https://www.facebook.com/loyifaateng/photos/a.231078303923039/975599902804205/"
        }
    ];
}


package charleywong.entities;

class Novembregirl implements Entity {
    public final id = "novembregirl";
    public final name = [
        en => "Novembregirl"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/novembregirl/"
        },
        {
            url: "https://www.facebook.com/novembregirl/",
            meta: [
                "id" => "366078590223086",
                "about" => "NOVEMBREGIRL provides handmade and vintage accessories, bags and clothing.",
                "categories" => [
                    "Accessories",
                    "Baby & children\'s clothing store"
                ],
                "addr" => "Hong Kong",
                "area" => "Hong Kong",
                "email" => "novembregirl.hk@gmail.com",
                "tel" => "56201006"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/novembregirl/photos/a.415975715233373/1390506134446988/"
        }
    ];
    public final tags:Array<Tag> = [];
}


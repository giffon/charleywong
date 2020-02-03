package charleywong.entities;

class Loklamhin implements Entity {
    public final id = "loklamhin";
    public final name = [
        zh => "樂霖軒"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/loklamhin/",
            meta: [
                "id" => "102753424555551",
                "about" => "香港人牽著手一起走！\n\n每宗交易盈利的10%捐給城寨和民權觀察組織等。",
                "categories" => [
                    "E-commerce website"
                ],
                "tel" => "97217062"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/loklamhin/posts/129600801870813"
        },
        {
            url: "https://www.facebook.com/loklamhin/photos/a.102973907866836/127084215455805/"
        }
    ];
    public final tags:Array<Tag> = [
        medical,
        food
    ];
}


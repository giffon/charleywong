package charleywong.entities;

class LeMariagehk implements Entity {
    public final id = "lemariagehk";
    public final name = [
        en => "Le Mariage hk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lemariagehk/",
            meta: [
                "id" => "193061957730510",
                "about" => "Mon-Sun 12:30-20:30\nTue closed\n...\n\n\n\nSee more",
                "categories" => [
                    "Bridal shop"
                ],
                "addr" => "上環永樂街東成商業大廈5樓C室",
                "area" => "Hong Kong",
                "tel" => "97706280"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lemariagehk/photos/a.215092688860770/939464883090210/"
        }
    ];
    public final tags:Array<Tag> = [
        bridal
    ];
}


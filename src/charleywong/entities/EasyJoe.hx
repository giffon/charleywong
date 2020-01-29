package charleywong.entities;

class EasyJoe implements Entity {
    public final id = "easyjoehk";
    public final name = [
        en => "Easy Joe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/easyjoehk/",
            meta: [
                "id" => "381883695993649",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "大角咀福全街18號地下",
                "area" => "Hong Kong",
                "email" => "hkeasyjoe@gmail.com",
                "tel" => "25060638"
            ]
        },
        {
            url: "https://www.instagram.com/easyjoe_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/easyjoehk/photos/a.417404569108228/563136494535034/"
        },
        {
            url: "https://www.facebook.com/easyjoehk/photos/a.417404569108228/516663512515666/"
        }
    ];
    public final tags:Array<Tag> = [];
}


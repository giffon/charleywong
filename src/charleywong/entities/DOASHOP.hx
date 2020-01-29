package charleywong.entities;

class DOASHOP implements Entity {
    public final id = "doa1119";
    public final name = [
        en => "DOA SHOP"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hk.carousell.com/choix"
        },
        {
            url: "https://www.facebook.com/doa1119/",
            meta: [
                "id" => "146108655744790",
                "categories" => [
                    "Clothing (brand)"
                ],
                "email" => "choix_1000@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/doa1119/posts/945322789156702"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class LETSBUYTOYS implements Entity {
    public final id = "letsbuytoys";
    public final name = [
        en => "LETS BUY TOYS"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.letsbuytoys.shop"
        },
        {
            url: "https://www.facebook.com/letsbuytoys/",
            meta: [
                "id" => "775565992557606",
                "about" => "Let\'s B.U.Y. Toys stands for \"Let\'s Build Up Your Toys\"",
                "categories" => [
                    "Games/toys"
                ],
                "addr" => "香港九龍旺角亞皆老街109-111號1樓101鋪",
                "area" => "Mong Kok",
                "email" => "letsbuytoys@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/letsbuytoys/posts/2622471204533733"
        }
    ];
    public final tags:Array<Tag> = [];
}


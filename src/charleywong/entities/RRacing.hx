package charleywong.entities;

class RRacing implements Entity {
    public final id = "RplusRacing";
    public final name = [
        en => "R+ Racing"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/RplusRacing/",
            meta: [
                "id" => "1545535889073622",
                "about" =>
                "Our company products are tested & trialed in the toughest world racing tournaments, aimed at providing only the best solutions for our customers.",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RplusRacing/photos/a.1545591302401414/2240013699625834/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


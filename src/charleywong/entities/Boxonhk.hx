package charleywong.entities;

class Boxonhk implements Entity {
    public final id = "boxonhk";
    public final name = [
        zh => "Boxon格子美妝精品店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/boxonhk/",
            meta: [
                "about" => "🌹旺角兆萬中心格仔旺店\n👍🏻不收任何按金或佣金\n👍🏻可代客交收及存貨...\n\n\n\nSee more",
                "categories" => [
                    "Shopping & retail",
                    "Rental shop"
                ],
                "email" => "boxonhk@gmail.com",
                "tel" => "66412990"
            ]
        },
        {
            url: "https://www.instagram.com/boxonhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/boxonhk/photos/a.227895471167316/473143329975861"
        },
        {
            url: "https://www.instagram.com/p/B4thP0hjX0n/"
        }
    ];
}


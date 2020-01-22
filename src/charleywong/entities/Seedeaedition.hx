package charleywong.entities;

class Seedeaedition implements Entity {
    public final id = "seedeaedition";
    public final name = [
        zh => "思至別註",
        en => "Seedea Edition"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/seedeaedition/",
            meta: [
                "about" =>
                "Handmade leather craft with hand dye colorful leather, slim in shape, playful design, refreshing ideas and keep it functional for using everyday.",
                "categories" => [
                    "Product/service",
                    "Gift shop"
                ],
                "email" => "info@seedea-edition.com",
                "tel" => "61673984",
                "id" => "1664527560435621"
            ]
        },
        {
            url: "https://www.instagram.com/seedea_edition/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/seedeaedition/photos/a.1677940692427641/2634171460137888/"
        },
        {
            url: "https://www.facebook.com/seedeaedition/posts/2472836999604669"
        }
    ];
}


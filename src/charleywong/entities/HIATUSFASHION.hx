package charleywong.entities;

class HIATUSFASHION implements Entity {
    public final id = "HIATUSFASHION";
    public final name = [
        en => "HIATUSFASHION"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.HIATUSFASHION.hk"
        },
        {
            url: "https://www.facebook.com/HIATUSFASHION/",
            meta: [
                "id" => "734964479876702",
                "about" =>
                "A brand with vintage and fashionable spirit. The core concept of the brand : \" Enter into the time crevasse\" create an unique, timeless design for men.",
                "categories" => [
                    "Clothing (brand)",
                    "Men\'s clothes shop"
                ],
                "addr" => "尖沙咀河內道18號K11 Artmall 1 樓 40號亭",
                "area" => "Hong Kong",
                "email" => "hiatusfashion@gmail.com",
                "tel" => "60802184"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HIATUSFASHION/photos/a.784301381609678/2773191939387269/"
        }
    ];
    public final tags:Array<Tag> = [
        clothing
    ];
}


package charleywong.entities;

class Blessshoes implements Entity {
    public final id = "blessshoeshk";
    public final name = [
        en => "Bless shoes"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/blessshoeshk/",
            meta: [
                "id" => "545966905566793",
                "about" => "High heels and accessories\nFor Wedding, dancing, and casual wear\n...\n\n\nSee more",
                "categories" => [
                    "Shoe shop",
                    "Bridal shop"
                ],
                "addr" => "太子, 彌敦道 745 - 747號, 金都商場 , 一樓, 107 鋪",
                "area" => "Hong Kong",
                "tel" => "21519390"
            ]
        },
        {
            url: "https://www.instagram.com/blessshk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/blessshoeshk/posts/1336286066534869"
        }
    ];
    public final tags:Array<Tag> = [];
}


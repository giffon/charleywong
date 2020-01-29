package charleywong.entities;

class MiaSposa implements Entity {
    public final id = "MiaSposa";
    public final name = [
        en => "Mia Sposa"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MiaSposa/",
            meta: [
                "id" => "196702667031193",
                "about" =>
                "Mia Sposa is the latest in glamour & freshness of wedding gown design. We offer a rich collection of elegant & vivacious designs created for the modern, discerning brides.",
                "categories" => [
                    "Bridal shop"
                ],
                "addr" => "2/F,10 Humphreys Ave, Tsim Sha Tsui, Kowloon, Hong Kong",
                "area" => "Tsim Sha Tsui",
                "email" => "info@miasposa.com.hk",
                "tel" => "69998356"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MiaSposa/photos/a.671566846211437/2802488536452580/"
        }
    ];
    public final tags:Array<Tag> = [];
}


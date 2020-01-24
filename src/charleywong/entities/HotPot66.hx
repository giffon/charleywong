package charleywong.entities;

class HotPot66 implements Entity {
    public final id = "66HotPot";
    public final name = [
        zh => "陸陸雞煲火鍋",
        en => "66 HOT POT"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/66HotPot/",
            meta: [
                "id" => "176552555810132",
                "categories" => [
                    "Food and drinks company"
                ],
                "email" => "info@66catering.com.hk",
                "tel" => "23638466"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/66HotPot/posts/1721008178031221"
        }
    ];
}

package charleywong.entities;

class BurgerHome implements Entity {
    public final id = "Burger-Home-139217689617319";
    public final name = [
        en => "Burger Home"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/139217689617319/",
            meta: [
                "about" => "每一個漢堡包都係用心制作",
                "categories" => [
                    "Fast food restaurant",
                    "Burger restaurant"
                ],
                "addr" => "灣仔軒尼詩道233號地下B舖",
                "area" => "Hong Kong",
                "tel" => "25751575",
                "id" => "139217689617319"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/139217689617319/photos/a.206749126197508/1245418045663939/"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=1223371061201971&id=139217689617319"
        }
    ];
}


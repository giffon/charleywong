package charleywong.entities;

class Foodappleseed implements Entity {
    public final id = "food.appleseed";
    public final name = [
        zh => "籽想好食"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://as.appledaily.com"
        },
        {
            url: "https://www.facebook.com/food.appleseed/",
            meta: [
                "id" => "2101112836830825",
                "about" => "「精挑細味 籽想好食」\n《籽想好食》為《香港蘋果日報》副刊《果籽》的全新飲食專頁，\n知味欄目陪你遍嚐風尚，細嚼人情。\n食海無涯，知味無價。",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "appleseed@appledaily.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/food.appleseed/posts/2402231630052276"
        },
        {
            url: "https://www.facebook.com/food.appleseed/posts/2485986691676769"
        }
    ];
    public final tags:Array<Tag> = [
        food,
        media
    ];
}


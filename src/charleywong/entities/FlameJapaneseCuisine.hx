package charleywong.entities;

class FlameJapaneseCuisine implements Entity {
    public final id = "Flame.Japanese.Cuisine";
    public final name = [
        zh => "焱丸水產"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Flame.Japanese.Cuisine/",
            meta: [
                "id" => "302340646638341",
                "about" => "磯燒~是解作日本漁師們的岩岸料理。是將海洋捕捉到的魚貝類,用最地道手法烹煮~",
                "categories" => [
                    "Japanese restaurant",
                    "Live & raw food restaurant"
                ],
                "tel" => "26519400"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Flame.Japanese.Cuisine/posts/1222046381334425"
        },
        {
            url: "https://www.facebook.com/Flame.Japanese.Cuisine/photos/a.322111857994553/1218268931712170/"
        },
        {
            url: "https://www.facebook.com/Flame.Japanese.Cuisine/photos/a.309766552562417/1210657355806661/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


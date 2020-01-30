package charleywong.entities;

class HamiHarmony implements Entity {
    public final id = "hamiharmony";
    public final name = [
        en => "Hami Harmony"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hamiharmony/",
            meta: [
                "id" => "419754201568536",
                "about" => "Coffee ♪ Restaurant ♪ Dessert",
                "categories" => [
                    "European restaurant",
                    "Coffee shop",
                    "Dessert shop"
                ],
                "addr" => "G/F, 161A Sai Yeung Choi St N",
                "area" => "Mong Kok",
                "tel" => "23270665"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hamiharmony/photos/a.476518709225418/1186539664889982/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


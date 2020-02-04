package charleywong.entities;

class Zeneatximen implements Entity {
    public final id = "zeneatximen";
    public final name = [
        zh => "禪食堂西門店",
        en => "Zen Eat Ximen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/zeneatximen/",
            meta: [
                "id" => "1954111641345200",
                "about" => "座落於台北西門町慈雲寺旁的禪食堂西門店，是含有咖啡店、選物店、書店、療癒空間、料理教室及精進料理私房晚餐的綜合空間。",
                "categories" => [
                    "Coffee shop",
                    "Family style restaurant",
                    "Cultural gift shop"
                ],
                "addr" => "台北市萬華區漢口街二段121號",
                "area" => "Taipei, Taiwan"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/zeneatximen/posts/2394757317280628"
        },
        {
            url: "https://www.facebook.com/zeneatximen/posts/2652388814850809"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


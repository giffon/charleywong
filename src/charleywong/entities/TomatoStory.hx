package charleywong.entities;

class TomatoStory implements Entity {
    public final id = "tomatostoryhk";
    public final name = [
        en => "Tomato Story"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tomatostoryhk/",
            meta: [
                "about" => "TOMATO STORY是一間以蕃茄為主題的小店餐廳，提供4個主打系列，包括「蕃茄清湯」、「咖哩蕃茄飯」、「蕃茄焗飯」同埋「星廚即製」系列，而駐店主廚更是前馬會董事廳主廚之一。",
                "categories" => [
                    "Restaurant",
                    "Event"
                ],
                "addr" => "G/F, 8-12 Hennessy Road, China Hong Kong Tower",
                "area" => "Wan Chai",
                "tel" => "69386618"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tomatostoryhk/photos/a.293312011348834/341974243149277/"
        }
    ];
}


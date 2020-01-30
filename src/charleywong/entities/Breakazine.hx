package charleywong.entities;

class Breakazine implements Entity {
    public final id = "breakazine";
    public final name = [
        en => "Breakazine",
        zh => "突破書誌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.breakazine.com"
        },
        {
            url: "https://www.facebook.com/breakazine/",
            meta: [
                "id" => "157800524251854",
                "about" => "香港出版季刊書誌。\n利用90天的慢媒空間，深度剖析一個社會議題，打破社會常態、創造可能的匠心。\n兼具觸感與視覺衝擊的紙本雜誌，將社會變革，提煉成溫柔而堅持的生活一小步。",
                "categories" => [
                    "Book",
                    "Magazine"
                ],
                "email" => "editors@breakthrough.org.hk",
                "tel" => "26320365"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/breakazine/photos/a.158788717486368/2822142501150963/"
        }
    ];
    public final tags:Array<Tag> = [
        book,
        shop
    ];
}


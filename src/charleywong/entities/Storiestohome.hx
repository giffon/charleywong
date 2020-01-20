package charleywong.entities;

class Storiestohome implements Entity {
    public final id = "storiestohome";
    public final name = [
        zh => "土家故事館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/storiestohome/",
            meta: [
                "about" => "2018年4月起，土家由社區文化關注 及維修香港共同營運。",
                "categories" => [
                    "Modern Art Museum",
                    "Event planner"
                ],
                "addr" => "土瓜灣鴻福街16號地下",
                "area" => "Hong Kong",
                "email" => "tohorizonhome@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/storiestohome/photos/a.729689463738650/3425800854127484"
        }
    ];
}


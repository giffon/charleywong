package charleywong.entities;

class Ragingpaw implements Entity {
    public final id = "ragingpaw";
    public final name = [
        zh => "肉球不滿"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ragingpaw/",
            meta: [
                "id" => "551237484931822",
                "about" => "畫貓,畫狗,畫人,畫花,畫樹,畫構想,畫事實,也畫不是狗的狗畫不是人的人... 最想還是畫貓.",
                "categories" => [
                    "Interest"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ragingpaw/photos/a.551644174891153/2663819657006917/"
        },
        {
            url: "https://www.facebook.com/ragingpaw/posts/2387936651261887"
        },
        {
            url: "https://www.facebook.com/ragingpaw/photos/a.551247211597516/2352250988163787/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


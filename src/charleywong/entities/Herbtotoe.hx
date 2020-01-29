package charleywong.entities;

class Herbtotoe implements Entity {
    public final id = "herb.to.toe";
    public final name = [
        en => "Herb To Toe",
        zh => "搽茶居"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/herb.to.toe/"
        },
        {
            url: "https://www.facebook.com/herb.to.toe/",
            meta: [
                "id" => "1583022501710609",
                "about" => "from head to toe, connect with herbs | 本店不定休 | say NO to the RED：100% 支持南丫量產及社企 + 100% 不淘寶 + 95% 非中國製造",
                "categories" => [
                    "Tea room",
                    "Medical and health"
                ],
                "addr" => "12C tai wan san tsuen YSW lamma island",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/herb.to.toe/posts/3000112683334910"
        },
        {
            url: "https://www.facebook.com/herb.to.toe/posts/2993313634014815"
        },
        {
            url: "https://www.facebook.com/herb.to.toe/photos/a.1733273326685525/2992577234088455/"
        },
        {
            url: "https://www.facebook.com/herb.to.toe/photos/a.1733273326685525/2983541514992027/"
        }
    ];
    public final tags:Array<Tag> = [];
}


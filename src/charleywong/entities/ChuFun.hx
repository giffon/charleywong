package charleywong.entities;

class ChuFun implements Entity {
    public final id = "chufune";
    public final name = [
        en => "Chu Fun"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chufune/",
            meta: [
                "id" => "183065423084",
                "about" => "C H chu fun e,\nC H chu fun e,\nC H chu fun e,\n我完全明白了。",
                "categories" => [
                    "Public figure"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chufune/posts/10156416525548085"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


package charleywong.entities;

class Aamberwork implements Entity {
    public final id = "aamberwork";
    public final name = [
        zh => "急急",
        en => "Touch"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/aamberwork/",
            meta: [
                "id" => "231296373977",
                "about" => "你好，這是急急子分享想法的地方。",
                "categories" => [
                    "Radio station",
                    "Author"
                ],
                "email" => "aamber2nd@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/aamberwork/photos/a.231381448977/10156822675623978/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


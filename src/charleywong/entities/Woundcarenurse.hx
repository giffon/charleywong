package charleywong.entities;

class Woundcarenurse implements Entity {
    public final id = "woundcarenurse";
    public final name = [
        zh => "小wound nurse的muttering"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/woundcarenurse/",
            meta: [
                "id" => "474048756092287",
                "about" => "不朽的主體性\n지금은 비록 희미하지만\n나도 세상을 향해\n밝게 빛나는 큰 별이 되어",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/woundcarenurse/posts/1381615965335557"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Kittyyuensiuyee implements Entity {
    public final id = "kittyyuensiuyee";
    public final name = [
        en => "Kitty Yuen Siu Yee",
        zh => "阮小儀"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kittyyuensiuyee/",
            meta: [
                "id" => "8748127833",
                "about" => "叱咤903 DJ小儀專屬FanPage*",
                "categories" => [
                    "Public figure"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kittyyuensiuyee/posts/10157607471397834"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


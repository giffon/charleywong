package charleywong.entities;

class Donaldtonghk implements Entity {
    public final id = "donaldtonghk";
    public final name = [
        en => "Donald",
        zh => "當奴"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/donaldtonghk/",
            meta: [
                "id" => "158850117473459",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/donaldtonghk/posts/3223226241035816"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


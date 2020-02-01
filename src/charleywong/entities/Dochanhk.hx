package charleywong.entities;

class Dochanhk implements Entity {
    public final id = "dochanhk";
    public final name = [
        zh => "陳到",
        en => "Do Chan"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://chandoremi.wordpress.com"
        },
        {
            url: "https://www.facebook.com/dochanhk/",
            meta: [
                "id" => "337355189653049",
                "about" => "writings of an inglorious pastor. 課金 link: http://www.passiontimes.hk/author/%E9%99%B3%E5%88%B0",
                "categories" => [
                    "Writer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dochanhk/photos/a.378735262181708/746079045447326/"
        },
        {
            url: "https://www.facebook.com/dochanhk/posts/2303746593013889"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        publicfigure
    ];
}


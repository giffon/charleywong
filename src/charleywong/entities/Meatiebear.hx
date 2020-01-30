package charleywong.entities;

class Meatiebear implements Entity {
    public final id = "meatiebear";
    public final name = [
        zh => "肉肉熊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/meatiebear/",
            meta: [
                "about" => "http://johnhocollection.weebly.com/\nwww.johnhoart.com\nhttp://www.etsy.com/shop/johnhoart",
                "categories" => [
                    "Artist"
                ],
                "id" => "189973007722888"
            ]
        },
        {
            url: "https://www.instagram.com/johnhohoo/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/meatiebear/photos/a.829158377137678/2605584792828352/"
        },
        {
            url: "https://www.facebook.com/meatiebear/photos/a.829158377137678/2596133430440155/"
        },
        {
            url: "https://www.facebook.com/meatiebear/posts/2590552344331597"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


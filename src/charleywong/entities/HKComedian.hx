package charleywong.entities;

class HKComedian implements Entity {
    public final id = "HKComedian";
    public final name = [
        zh => "喜劇演員"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HKComedian/",
            meta: [
                "id" => "204198012949721",
                "about" => "為搞笑而生",
                "categories" => [
                    "Comedian"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKComedian/posts/2471061492930017"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


package charleywong.entities;

class MerryMarry implements Entity {
    public final id = "MerryMarryMakeup";
    public final name = [
        en => "MerryMarry"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.fotop.net/merrymarry"
        },
        {
            url: "https://www.facebook.com/MerryMarryMakeup/",
            meta: [
                "id" => "193165370760218",
                "about" => "Address: 29-31 Queen\'s Road East, Wanchai\nhttp://merrymarry-sandy.blogspot.hk/2014/01/merrymarry-2014-20",
                "categories" => [
                    "Makeup artist"
                ],
                "addr" => "Queen\'s Road East, Wanchai",
                "area" => "Hong Kong",
                "email" => "merrymarry@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MerryMarryMakeup/posts/2473015126108553"
        }
    ];
    public final tags:Array<Tag> = [];
}


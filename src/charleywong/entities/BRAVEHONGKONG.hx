package charleywong.entities;

class BRAVEHONGKONG implements Entity {
    public final id = "BRAVEHONGKONG";
    public final name = [
        zh => "勇武香港",
        en => "Brave Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BRAVEHONGKONG/",
            meta: [
                "id" => "105915067428103",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BRAVEHONGKONG/photos/a.107975227222087/164574784895464/"
        },
        {
            url: "https://www.facebook.com/BRAVEHONGKONG/posts/147268106626132"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        media
    ];
}


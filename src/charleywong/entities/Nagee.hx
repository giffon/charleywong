package charleywong.entities;

class Nagee implements Entity {
    public final id = "nagee.tw";
    public final name = [
        en => "nagee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://nagee-tw.blogspot.tw"
        },
        {
            url: "https://www.facebook.com/nagee.tw/",
            meta: [
                "id" => "353390642311",
                "about" => "台灣創作人",
                "categories" => [
                    "Author"
                ],
                "email" => "nagee007@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/nagee_taiwan/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/nagee.tw/posts/10156283287967312"
        },
        {
            url: "https://www.facebook.com/nagee.tw/photos/a.10152207300457312/10156270015422312/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


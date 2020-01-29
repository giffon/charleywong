package charleywong.entities;

class Catphotohk implements Entity {
    public final id = "catphoto.hk";
    public final name = [
        zh => "隨貓隨影"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/catphoto.hk/",
            meta: [
                "id" => "393902277692900",
                "about" => "隨著貓咪的腳步，用攝影方式紀錄下來。\n\n將他們介紹給更多人知道，希望更多人愛貓。...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Photographer",
                    "Art"
                ],
                "email" => "harold.pch@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/catphoto.hk/photos/a.393916304358164/867588600324263/"
        },
        {
            url: "https://www.facebook.com/catphoto.hk/videos/978621229188884/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer
    ];
}


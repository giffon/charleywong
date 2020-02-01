package charleywong.entities;

class Phdburden implements Entity {
    public final id = "phdburden";
    public final name = [
        zh => "這個 PhD 只是我的負累"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/phdburden/",
            meta: [
                "id" => "1503349956548932",
                "about" => "一個數學博士真實經歷改編.",
                "categories" => [
                    "Book"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/phdburden/posts/2249835358567051"
        },
        {
            url: "https://www.facebook.com/phdburden/photos/a.1614861468731113/2416604805223438/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


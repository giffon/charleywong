package charleywong.entities;

class Muous implements Entity {
    public final id = "muous";
    public final name = [
        zh => "木偶小姐",
        en => "MUOUS"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/muous/",
            meta: [
                "about" => "MUOUS是木偶小姐建立的品牌。不定期分享原創插畫、手作。",
                "categories" => [
                    "Video creator",
                    "Author",
                    "Art"
                ],
                "email" => "muou.mail@gmail.com",
                "id" => "1402385826672544"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/muous/photos/a.1403198369924623/2471436869767429/"
        },
        {
            url: "https://www.facebook.com/muous/posts/2544625549115227"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Psychesholia implements Entity {
    public final id = "psychesholia";
    public final name = [
        en => "psychesholia"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/psychesholia/",
            meta: [
                "about" => "花束訂製| 花藝產品 | 場景樹脂工藝產品 | 工藝班服務\n\n▲\nemail: psychesholia@gmail.com",
                "categories" => [
                    "Product/service"
                ],
                "email" => "psychesholia@gmail.com",
                "tel" => "96737329",
                "id" => "212312718897530"
            ]
        },
        {
            url: "https://www.instagram.com/psychesholia_/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/psychesholia/posts/2341918242603623"
        },
        {
            url: "https://www.facebook.com/psychesholia/photos/a.228191160643019/2154460058016110/"
        },
        {
            url: "https://www.facebook.com/psychesholia/photos/a.228191160643019/2442584039203709/"
        }
    ];
    public final tags:Array<Tag> = [];
}


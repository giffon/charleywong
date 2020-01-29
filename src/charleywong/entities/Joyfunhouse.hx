package charleywong.entities;

class Joyfunhouse implements Entity {
    public final id = "joyfunhouse";
    public final name = [
        zh => "樂趣屋"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://joyfunhouse.wixsite.com/home"
        },
        {
            url: "https://www.facebook.com/joyfunhouse/",
            meta: [
                "id" => "187479251698034",
                "about" => "本店零售Tomica車仔和其副產品, 另零售和批發積木玩具, 其他精品等.",
                "categories" => [
                    "Retail company"
                ],
                "addr" => "深水埗長沙灣道226-242號深之都商場2樓61號鋪",
                "area" => "Hong Kong",
                "email" => "joyfunhouse@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/joyfunhouse/posts/768819800230640"
        }
    ];
    public final tags:Array<Tag> = [];
}


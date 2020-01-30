package charleywong.entities;

class KizunaSaxophoneQuartet implements Entity {
    public final id = "kizunasax";
    public final name = [
        en => "Kizuna Saxophone Quartet"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kizunasax/",
            meta: [
                "id" => "805237179520488",
                "about" => "樂器教授，表演藝術",
                "categories" => [
                    "Musician",
                    "Performing arts"
                ],
                "addr" => "尖沙咀山林道54-56號, 利雅商業大廈304室",
                "area" => "Hong Kong",
                "tel" => "61726636"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kizunasax/posts/2844005825643603"
        },
        {
            url: "https://www.facebook.com/kizunasax/posts/2803707283006791"
        },
        {
            url: "https://www.facebook.com/kizunasax/posts/2512328908811298"
        },
        {
            url: "https://www.facebook.com/kizunasax/photos/a.866692206708318/2417840724926784/"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}


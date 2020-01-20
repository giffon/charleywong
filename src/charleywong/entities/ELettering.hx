package charleywong.entities;

class ELettering implements Entity {
    public final id = "e.letteringhk";
    public final name = [
        en => "E Lettering"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/e.letteringhk/",
            meta: [
                "about" =>
                "Hong Kong Calligrapher | Wedding Calligraphy | Corporate Gift | Workshop\n\nFor bulk order or event inquiry, please inbox me or email at e.letteringhk@gmail.com.hk",
                "categories" => [
                    "Product/service"
                ],
                "email" => "e.letteringhk@gmail.com",
                "tel" => "92709627"
            ]
        },
        {
            url: "https://www.instagram.com/e.lettering/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/e.letteringhk/videos/589479181855837/"
        },
        {
            url: "https://www.facebook.com/e.letteringhk/photos/a.424441407926132/996182807418653/"
        }
    ];
}


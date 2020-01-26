package charleywong.entities;

class QWArtMakeup implements Entity {
    public final id = "queeniewartnmakeup";
    public final name = [
        en => "QW Art & Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/queeniewartnmakeup/",
            meta: [
                "id" => "305204242981340",
                "about" =>
                "Beauty is being the best possible version of yourself on the inside and out.\n\n* Bridal makeup services * Local/Oversea Pre-wedding makeup* Media makeup *",
                "categories" => [
                    "Product/service",
                    "Makeup artist",
                    "Skincare service"
                ],
                "email" => "qw.art.makeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/queeniewartnmakeup/photos/a.338127006355730/1390498381118582/"
        }
    ];
}


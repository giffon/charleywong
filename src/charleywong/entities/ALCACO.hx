package charleywong.entities;

class ALCACO implements Entity {
    public final id = "ALCAdress";
    public final name = [
        en => "ALCA & CO."
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://alcaco.wixsite.com/alcadress"
        },
        {
            url: "https://www.facebook.com/ALCAdress/",
            meta: [
                "id" => "433580386831285",
                "about" => "ALCA是一間婚紗晚禮服公司，負責人CATHERINE 以「本土設計」「香港情懷」的理念經營，堅持「人情味 」的營運模式，深信「用心服務」便能做到。",
                "categories" => [
                    "Bridal shop"
                ],
                "email" => "wongtszkei@ymail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ALCAdress/photos/a.436903629832294/1233480706841245/"
        }
    ];
    public final tags:Array<Tag> = [
        bridal
    ];
}


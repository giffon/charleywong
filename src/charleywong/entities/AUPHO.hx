package charleywong.entities;

class AUPHO implements Entity {
    public final id = "AUPHO";
    public final name = [
        en => "AUPHO"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.aupho-wedding.hk"
        },
        {
            url: "https://www.facebook.com/AUPHO/",
            meta: [
                "id" => "1415696702004846",
                "about" =>
                "::Service::\nOverseas / Local\nWeddings & Portraits ; etc.\n\n�Please feel free to contact me if you have any questions or comments.",
                "categories" => [
                    "Photographer"
                ],
                "email" => "info@aupho.hk",
                "tel" => "55320856"
            ]
        },
        {
            url: "https://www.instagram.com/aupho.wedding/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AUPHO/photos/a.1446574772250372/2415647668676406/"
        }
    ];
}


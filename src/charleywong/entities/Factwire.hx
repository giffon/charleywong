package charleywong.entities;

class Factwire implements Entity {
    public final id = "factwire";
    public final name = [
        en => "FactWire News Agency",
        zh => "傳真社"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.factwire.org"
        },
        {
            url: "https://www.facebook.com/factwire/",
            meta: [
                "id" => "396495580557502",
                "about" => "+852 9639 7479 WhatsApp | Telegram 報料",
                "categories" => [
                    "Non-profit organisation",
                    "Media/news company"
                ],
                "email" => "newsroom@factwire.org"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/factwire/photos/a.437287353144991/1177245315815854/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


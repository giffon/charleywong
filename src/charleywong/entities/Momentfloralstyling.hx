package charleywong.entities;

class Momentfloralstyling implements Entity {
    public final id = "momentfloralstyling";
    public final name = [
        zh => "花賞時刻",
        en => "Moment Floral & Styling"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/momentfloralstyling/",
            meta: [
                "about" => "花之所以美麗，在於它短暫而珍貴。時刻保持「學花 ．賞花」的初心，用心．手．文字．相片，留住花每一個最美的時刻。",
                "categories" => [
                    "Florist",
                    "Product/service"
                ],
                "email" => "momentfloralstyling@gmail.com",
                "id" => "2595464967346303"
            ]
        },
        {
            url: "https://www.instagram.com/momentfloralstyling/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/momentfloralstyling/posts/3037079233184872"
        }
    ];
    public final tags:Array<Tag> = [];
}


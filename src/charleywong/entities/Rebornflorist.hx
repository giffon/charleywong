package charleywong.entities;

class Rebornflorist implements Entity {
    public final id = "rebornflorist";
    public final name = [
        zh => "叢生·森活",
        en => "RebornFlorist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.rebornflorist.com"
        },
        {
            url: "https://www.facebook.com/rebornflorist/",
            meta: [
                "id" => "102726890202839",
                "about" => "歡迎光臨叢生·森活！本店專售防輻射多肉植物，空氣草，精品小盆栽，微景觀，玻璃瓶裝飾品及其他小擺設。歡迎查詢！本店地址：屯門華都商場壹樓62A。WhatsApp: 98708671 Instagram: rebornflorist",
                "categories" => [
                    "Home decor"
                ],
                "addr" => "屯利街1號華都商場壹樓62A",
                "area" => "Tuen Mun",
                "email" => "rebornflorist@gmail.com",
                "tel" => "98708671"
            ]
        },
        {
            url: "https://www.instagram.com/rebornflorist/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rebornflorist/photos/a.139667736508754/661483454327177/"
        },
        {
            url: "https://www.facebook.com/rebornflorist/photos/a.139667736508754/778226655986189/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}


package charleywong.entities;

class Sevillabridal implements Entity {
    public final id = "sevillabridal";
    public final name = [
        en => "Sevilla Bridal"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.sevillabridal.com"
        },
        {
            url: "https://www.facebook.com/sevillabridal/",
            meta: [
                "id" => "135632939819366",
                "about" =>
                "婚紗、晚裝、裙褂、馬褂、媽媽衫、男禮\n化妝|婚禮攝錄|婚紗攝影|大妗姐\nGowns & tuxedo rental; makeup & photography\nWhatsapp:55408890\n長沙灣永康街63號Global Gateway Tower 19樓11室 (荔枝角站 B1出口步行3分鐘)",
                "categories" => [
                    "Bridal shop",
                    "Retail company"
                ],
                "addr" => "Flat 11, 19/F, no. 63 Wing Hong Street, Global Gateway Tower",
                "area" => "Cheung Sha Wan, Hong Kong",
                "email" => "info@sevillabridal.com",
                "tel" => "26684000"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sevillabridal/posts/2480976178618352"
        },
        {
            url: "https://www.facebook.com/sevillabridal/posts/2497856210263682"
        }
    ];
    public final tags:Array<Tag> = [];
}


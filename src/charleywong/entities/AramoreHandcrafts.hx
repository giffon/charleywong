package charleywong.entities;

class AramoreHandcrafts implements Entity {
    public final id = "aramorehandcrafts";
    public final name = [
        en => "Aramore Handcrafts"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/aramorehandcrafts/",
            meta: [
                "about" => "《小島花林》\nAramore x Smilingcone\n店舖地址：荔枝角長義街9號D2 place One 1樓114A舖\n營業時間：12:30-9pm(星期一至日）",
                "categories" => [
                    "Personal blog"
                ],
                "email" => "myaramore@gmail.com",
                "tel" => "64481713",
                "id" => "1439346026374999"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/aramorehandcrafts/photos/a.1439580183018250/2198485730461021/"
        },
        {
            url: "https://www.facebook.com/aramorehandcrafts/photos/a.1439580183018250/2128920077417587/"
        }
    ];
    public final tags:Array<Tag> = [];
}


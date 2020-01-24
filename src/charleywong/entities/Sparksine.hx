package charleywong.entities;

class Sparksine implements Entity {
    public final id = "sparksine";
    public final name = [
        en => "Sparksine"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://sparksine.com"
        },
        {
            url: "https://www.facebook.com/sparksine/",
            meta: [
                "id" => "171865193517754",
                "about" => "「SparkSine好書精粹，讓讀者可以用更快更簡單的方法吸收一本書的重點內容。讓大家可以在忙碌的生活中繼續吸收知識，提升自我。」",
                "categories" => [
                    "Product/service"
                ],
                "email" => "isaac@sparksine.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sparksine/photos/a.178861036151503/361868894517382/"
        }
    ];
}


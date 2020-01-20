package charleywong.entities;

class RabbitlandCafe implements Entity {
    public final id = "rabbitlandcafe";
    public final name = [
        en => "Rabbitland Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/rabbitlandcafe/",
            meta: [
                "about" =>
                "全港首間兔Cafe，位於銅鑼灣，大家可以約埋三五知己上黎一齊與兔兔們共享歡樂時光\n\nFirst rabbit cafe in Hong Kong. Play with bunnies in cafe!!!\n\nPlease call 5281-0280 for reservation.",
                "categories" => [
                    "Pet service",
                    "Pet cafe",
                    "Coffee shop"
                ],
                "addr" => "銅鑼灣謝斐道530號3樓",
                "area" => "Causeway Bay",
                "email" => "info@rabbitland.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rabbitlandcafe/posts/1150838688459322"
        }
    ];
}


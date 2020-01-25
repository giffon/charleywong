package charleywong.entities;

class TakkBlomster implements Entity {
    public final id = "takkblomster";
    public final name = [
        en => "takk Blomster"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/takkblomster/"
        },
        {
            url: "https://www.facebook.com/takkblomster/",
            meta: [
                "id" => "275785119428394",
                "about" => "Rose and Romanticism!\ntakk Blomster成立於2015年11月。主理人Kym是一位玫瑰愛好者，同時熱愛北歐國家的文化和音樂。takk是北歐語謝謝的意思，希望藉著花兒傳遞出感謝的心意。",
                "categories" => [
                    "Florist"
                ],
                "addr" => "尖沙咀諾士佛臺9號冠福中心3樓303室",
                "area" => "Hong Kong",
                "email" => "takkblomster@gmail.com",
                "tel" => "53116017"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/takkblomster/photos/a.280055375668035/1023172041356361/"
        }
    ];
}


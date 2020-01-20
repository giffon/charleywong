package charleywong.entities;

class Greenfieldbookstore implements Entity {
    public final id = "greenfieldbookstore";
    public final name = [
        zh => "田園書屋",
        en => "Greenfield Book Store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/greenfieldbookstore/",
            meta: [
                "about" => "本店專營港台文史哲、藝術社會勵志書的樓上書店。\n本店全年折扣優惠。\n\nIG: gfbook1976\nWhatsapp: 93840265",
                "categories" => [
                    "Book shop"
                ],
                "addr" => "九龍旺角西洋菜街56號2樓",
                "area" => "Mong Kok",
                "email" => "gfbook@netvigator.com",
                "tel" => "23858031"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/greenfieldbookstore/photos/a.1557862131181965/2158298967804942"
        }
    ];
}


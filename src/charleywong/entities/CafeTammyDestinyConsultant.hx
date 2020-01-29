package charleywong.entities;

class CafeTammyDestinyConsultant implements Entity {
    public final id = "CafeTammyDestinyConsultant";
    public final name = [
        en => "Cafe-Tammy Destiny Consultant",
        zh => "太陽神殿命理分析服務"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cafe-tammy.com"
        },
        {
            url: "https://www.facebook.com/CafeTammyDestinyConsultant/",
            meta: [
                "id" => "106299919483854",
                "about" => "太陽神殿命理分析服務以幫助客人解開心結為己任，讓客人重新認清目標，作出明智的決定。",
                "categories" => [
                    "Business consultant",
                    "Astrologist",
                    "Wholesale and supply shop"
                ],
                "addr" => "131, Connaught Road West",
                "area" => "Sai Ying Poon, Hong Kong",
                "email" => "tammychau@cafe-tammy.com",
                "tel" => "98301841"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CafeTammyDestinyConsultant/posts/2620787308035090"
        },
        {
            url: "https://www.facebook.com/CafeTammyDestinyConsultant/photos/a.1246230725490762/2511950222252133/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


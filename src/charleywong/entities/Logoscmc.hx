package charleywong.entities;

class Logoscmc implements Entity {
    public final id = "logos.cmc";
    public final name = [
        zh => "千泉醫館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cmc-logos.com"
        },
        {
            url: "https://www.facebook.com/logos.cmc/",
            meta: [
                "id" => "867308873457966",
                "about" => "千泉醫館提供多元化及全面的醫療養生服務，除了中醫診治、針灸、拔罐 、推拿、整脊手法整復、刮痧放血、艾療溫灸、天灸療法，還設有埋線減肥療法、豐胸針灸、美容保健、脫疣等 。",
                "categories" => [
                    "Medical service"
                ],
                "addr" => "901,23 Hillwood Road,Tsim Sha Tsui",
                "area" => "Hong Kong",
                "email" => "cmc.logos@gmail.com",
                "tel" => "67514815"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/logos.cmc/posts/1135712303284287"
        },
        {
            url: "https://www.facebook.com/logos.cmc/photos/a.886759858179534/1260756984113151/"
        }
    ];
    public final tags:Array<Tag> = [
        medical,
        shop
    ];
}


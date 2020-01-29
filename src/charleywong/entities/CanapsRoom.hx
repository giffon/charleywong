package charleywong.entities;

class CanapsRoom implements Entity {
    public final id = "canapesroom";
    public final name = [
        en => "Canapés Room",
        zh => "圓點工房"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.canapesroom.com"
        },
        {
            url: "https://www.facebook.com/canapesroom/",
            meta: [
                "about" => "餐廳主打法式精緻小食，午市有慢煮(slow cook)系列，更為你度身一站式到會服務(Customized Catering Service)，由到會顧問親自與您聯絡，了解您的需要。",
                "categories" => [
                    "Breakfast & brunch restaurant",
                    "Caterer",
                    "Coffee shop"
                ],
                "addr" => "23-26,3/F, Block B, Wah Lok Industrial Centre, 31-41 San Mei Street, Fo Tan",
                "area" => "Sha Tin, Hong Kong",
                "email" => "info@canapesroom.com",
                "tel" => "37493873",
                "id" => "492284157630543"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/canapesroom/photos/a.492948680897424/1066044103587876/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


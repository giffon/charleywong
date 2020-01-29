package charleywong.entities;

class SoooVegi implements Entity {
    public final id = "SoooVegi";
    public final name = [
        en => "Sooo Vegi",
        zh => "素食主意"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/SoooVegi/",
            meta: [
                "about" => "香港北角電器道254-280號華凱大廈地下A6號舖. (店舖位於華凱大廈旁的福元街行人天橋底)\nTel: 2881 7996",
                "categories" => [
                    "Vegetarian/Vegan Restaurant",
                    "Health food restaurant"
                ],
                "addr" => "Shop A6, Wah Hoi Mansion, 254-280 Electric Rd",
                "area" => "North Point",
                "id" => "190133197862307"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SoooVegi/posts/1183078621901088"
        },
        {
            url: "https://www.facebook.com/SoooVegi/posts/1064509110424707"
        }
    ];
    public final tags:Array<Tag> = [];
}


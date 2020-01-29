package charleywong.entities;

class Ahimsabuffet implements Entity {
    public final id = "ahimsabuffet";
    public final name = [
        zh => "無肉食",
        en => "ahimsa buffet"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ahimsabuffet/",
            meta: [
                "id" => "119559151717871",
                "about" => "無肉，也是種生活。素食文化趨勢迎合了社會追求健康及環保的意識。無肉食除了為顧客提供多元化的健康素菜，更著重和平及惜食的信念，並決心為香港素食文化帶來別樹一格的新氣象。",
                "categories" => [
                    "Vegetarian/Vegan Restaurant",
                    "Buffet restaurant"
                ],
                "addr" => "北角堡壘街10-16號華曦大廈地下B舖, 食環普通食肆牌照：2211806499 ,Shop B, G/F, Wah Hai Mansion, 10-16 Fort Street, North Point",
                "area" => "Hong Kong",
                "tel" => "25282368"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ahimsabuffet/posts/1061802914160152"
        },
        {
            url: "https://www.facebook.com/ahimsabuffet/photos/a.121559518184501/1040064996333944/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


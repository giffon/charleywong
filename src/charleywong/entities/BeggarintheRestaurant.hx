package charleywong.entities;

class BeggarintheRestaurant implements Entity {
    public final id = "BeggarintheRestaurant";
    public final name = [
        en => "The Beggar in the Restaurant",
        zh => "乞客"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://beggarintherestaurant.com"
        },
        {
            url: "https://www.facebook.com/BeggarintheRestaurant/",
            meta: [
                "id" => "1448245808767974",
                "about" => "乞客起源：餐廳嗨客。內含極之多既粗言穢語及諷刺成份。未做過餐廳唔明嫁！斯文人及on9勿入，鐘意既麻煩like & share。",
                "categories" => [
                    "Comedian",
                    "Restaurant"
                ],
                "email" => "info@beggarintherestaurant.com"
            ]
        },
        {
            url: "https://www.instagram.com/beggarrestaurant/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BeggarintheRestaurant/posts/2326730737586139"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


package charleywong.entities;

class Fix3C implements Entity {
    public final id = "Fix3C";
    public final name = [
        zh => "3C 維修工作室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://fixman.hk/"
        },
        {
            url: "https://www.facebook.com/Fix3C/",
            meta: [
                "about" => "爆mon? 搵3C維修工作室,上門專整iPhone爆mon，iPhone換電",
                "categories" => [
                    "Computer repair service",
                    "Mobile phone shop",
                    "Phone/tablet"
                ],
                "addr" => "荔枝角 香港工業中心 B座2樓712",
                "area" => "Hong Kong",
                "email" => "fixxx3c@gmail.com",
                "tel" => "68555896",
                "id" => "545772952127123"
            ]
        },
        {
            url: "https://www.instagram.com/Fix3c/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Fix3C/posts/2581624801875251"
        },
        {
            url: "https://www.facebook.com/Fix3C/posts/2194873660550369"
        }
    ];
    public final tags:Array<Tag> = [
        phone
    ];
}


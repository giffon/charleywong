package charleywong.entities;

class Sakaraichisushi implements Entity {
    public final id = "sakaraichisushi";
    public final name = [
        zh => "魚一壽司"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sakaraichisushi/",
            meta: [
                "id" => "824806370908203",
                "about" => "魚一營業資訊:\n#星期一至日「無休日」\n#時間:「11:30am - 11:00pm」...\n\n\nSee more",
                "categories" => [
                    "Sushi Restaurant",
                    "Asian fusion restaurant"
                ],
                "addr" => "元朗教育路68號兆豐樓7號地鋪",
                "area" => "Hong Kong"
            ]
        },
        {
            url: "https://www.facebook.com/YLsalakasushi/",
            meta: [
                "id" => "134852396662712",
                "about" => "元朗教育路68號兆豐樓7號地鋪(中旅社對面) 電話:24852121 歡迎電話落單，訂枱\n營業時間為11:00AM~12:00PM",
                "categories" => [
                    "Food and drinks company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sakaraichisushi/photos/a.827986587256848/2538007312921425/"
        },
        {
            url: "https://www.facebook.com/sakaraichisushi/posts/2586965891358900"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


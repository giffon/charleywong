package charleywong.entities;

class Yungkeemin implements Entity {
    public final id = "yungkeemin";
    public final name = [
        zh => "榕記車仔麵",
        en => "Yung Kee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://weibo.com/yungkeenoodle"
        },
        {
            url: "https://www.facebook.com/yungkeemin/",
            meta: [
                "id" => "599232710134146",
                "about" => "榕記車仔麵\n觀塘港貿中心201室\nInstagram : yungkeenoodle\nOpening Hours : 11:00 a.m. - 4:00 p.m.",
                "categories" => [
                    "Cantonese restaurant",
                    "Bunsik restaurant",
                    "Barbecue restaurant"
                ],
                "addr" => "Room 201,Entrepot Centre, Kwun Tong",
                "area" => "Kowloon, Hong Kong",
                "email" => "yungkeenoodles@gmail.com",
                "tel" => "68885831"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yungkeemin/photos/a.787555541301861/2804558386268223/"
        },
        {
            url: "https://www.facebook.com/yungkeemin/photos/a.787555541301861/2763751053682290/"
        },
        {
            url: "https://www.facebook.com/yungkeemin/photos/a.787555541301861/2758868400837222/"
        }
    ];
}


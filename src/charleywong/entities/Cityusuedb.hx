package charleywong.entities;

class Cityusuedb implements Entity {
    public final id = "cityusuedb";
    public final name = [
        zh => "香港城市大學學生會編輯委員會",
        en => "Editorial Board, CityU SU"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cityusuedb/",
            meta: [
                "id" => "387603714763860",
                "about" => "香港城市大學學生會編輯委員會為負責學生會刊物出版事宜之最高行政機構，直接向全體會員負責。",
                "categories" => [
                    "News and media website"
                ],
                "email" => "su-eb-c@my.cityu.edu.hk",
                "tel" => "34425565"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cityusuedb/posts/1094123420778549"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        organization
    ];
}


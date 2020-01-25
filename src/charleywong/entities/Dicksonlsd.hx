package charleywong.entities;

class Dicksonlsd implements Entity {
    public final id = "dickson.lsd";
    public final name = [
        zh => "周嘉發",
        en => "Dickson Chau"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dickson.lsd/",
            meta: [
                "id" => "369363429932052",
                "about" => "香港大學(榮譽)理學士 2014\n香港大學學生會常務秘書 2013\n香港大學學生會理學會時事事務秘書 2011\n喇沙書院 2003-2010",
                "categories" => [
                    "Politician"
                ],
                "email" => "dicksonchau.lsd@gmail.com",
                "tel" => "95751082"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dickson.lsd/posts/1201112320090488"
        },
        {
            url: "https://www.facebook.com/dickson.lsd/posts/1166531850215202"
        }
    ];
}


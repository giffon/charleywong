package charleywong.entities;

class Oppanoonaphoto implements Entity {
    public final id = "oppanoonaphoto";
    public final name = [
        en => "Oppa Noona"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oppanoonaphoto/",
            meta: [
                "id" => "314081201991253",
                "about" =>
                "一站式證件相片拍攝\n包括服裝，補妝，攝影及修圖拍攝服務，只接受FB預約\n\nOne-stop passport photo service\nIncluding professional shooting, clothing, and photo touch up FB msg REVERSATION ONLY",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "銅鑼灣謝斐道460-462號楊耀熾商業大廈15樓",
                "area" => "Hong Kong",
                "email" => "oppanoonaphoto@gmail.com",
                "tel" => "28512555"
            ]
        },
        {
            url: "https://www.instagram.com/oppanoonaphoto/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oppanoonaphoto/photos/a.1369319719800724/2654442867955063/"
        },
        {
            url: "https://www.facebook.com/oppanoonaphoto/photos/a.1385035658229130/2652169678182382/"
        },
        {
            url: "https://www.facebook.com/oppanoonaphoto/photos/a.1385035658229130/2582747628457921/"
        },
        {
            url: "https://www.facebook.com/oppanoonaphoto/photos/a.1385035658229130/2477079515691400/"
        }
    ];
    public final tags:Array<Tag> = [
        photography,
        shop
    ];
}


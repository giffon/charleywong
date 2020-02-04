package charleywong.entities;

class Meetandchill2019 implements Entity {
    public final id = "meetandchill2019";
    public final name = [
        zh => "聚 CHILL"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/meetandchill2019/",
            meta: [
                "id" => "2345456222393289",
                "about" => "小本經營，用心制作，即叫即煮。小店地址:屯門井財街15號金銘大廈14號舖營業時間: 12:00-15:00 ; 18:00-00:00IG: meetandchill2019",
                "categories" => [
                    "Fast food restaurant"
                ],
                "email" => "meetandchill@hotmail.com",
                "tel" => "93050579"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/meetandchill2019/photos/a.2350676841871227/2564345130504396/"
        },
        {
            url: "https://www.facebook.com/meetandchill2019/posts/2488516904753886"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


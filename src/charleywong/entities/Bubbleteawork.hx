package charleywong.entities;

class Bubbleteawork implements Entity {
    public final id = "bubbleteawork";
    public final name = [
        zh => "丸·茶手作"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://bubbleteawork.co"
        },
        {
            url: "https://www.facebook.com/bubbleteawork/",
            meta: [
                "id" => "317704111927027",
                "about" => "丸茶手作Bubble Tea Work，成立於2016年，創辦人Eilif台灣台南人，現居香港。總店設立於香港何文田勝利道，因全球首創桂花口味珍珠而嶄露頭角，並於2017-2018年榮登【新假期】雜誌評選為全港第一",
                "categories" => [
                    "Bubble tea shop",
                    "Tea room"
                ],
                "addr" => "九龍何文田勝利道12號地舖1B",
                "area" => "Hong Kong",
                "email" => "bubbleteawork@gmail.com",
                "tel" => "27999265"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bubbleteawork/photos/a.333837140313724/947471475616951/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


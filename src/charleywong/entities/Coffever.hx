package charleywong.entities;

class Coffever implements Entity {
    public final id = "180657409272018";
    public final name = [
        en => "Coffever"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/180657409272018/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Restaurant",
                    "Tea room"
                ],
                "addr" => "Room C, 3/F, Po Ming Building, Foo Ming Street 2-6, Causeway Bay, Hong Kong",
                "area" => "Causeway Bay",
                "email" => "coffeverhk@gmail.com",
                "tel" => "69189374"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/180657409272018/photos/a.185490085455417/447015615969528/"
        },
        {
            url: "https://www.facebook.com/180657409272018/photos/a.185490085455417/442782503059506/"
        },
        {
            url: "https://www.facebook.com/180657409272018/photos/a.185490085455417/412533266084430/"
        }
    ];
}


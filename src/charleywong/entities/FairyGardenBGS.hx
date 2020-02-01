package charleywong.entities;

class FairyGardenBGS implements Entity {
    public final id = "FairyGardenBGS";
    public final name = [
        zh => "棋緣",
        en => "Fairy Garden"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FairyGardenBGS/",
            meta: [
                "id" => "1734059673406637",
                "about" => "理念：無論你係一支公上黎、一家大細上黎、又或者成玩朋友上黎，我地已經準備好唔同既桌遊比你地，務求你地可以點都享受到玩桌遊既樂趣！重唔快d上嚟玩下！",
                "categories" => [
                    "Board game"
                ],
                "email" => "fairygardencs@gmail.com",
                "tel" => "36194452"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FairyGardenBGS/photos/a.1746142672198337/1827590880720182/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


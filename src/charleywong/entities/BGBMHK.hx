package charleywong.entities;

class BGBMHK implements Entity {
    public final id = "BGBMHK";
    public final name = [
        zh => "表哥表妹市集",
        en => "Biugor Biumui"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BGBMHK/",
            meta: [
                "about" =>
                "我地係 \"表哥表妹\". 歡迎你地成為”表哥””表妹”, 表現自己出色嘅工藝、作品、態度, 想了解更多可以隨時聯繫我地!\nWe are a group of youth \"Biugor Biumui - Cousins\".\nYou\'re welcome to be part of us by a shout!",
                "categories" => [
                    "Festival"
                ],
                "email" => "biugorbiumui@gmail.com",
                "tel" => "66864711"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BGBMHK/posts/1437269136441958"
        },
        {
            url: "https://www.facebook.com/BGBMHK/photos/a.1211943195641221/1398215120347360/"
        }
    ];
}


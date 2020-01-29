package charleywong.entities;

class Hkcropcircle implements Entity {
    public final id = "hkcropcircle";
    public final name = [
        zh => "麥田圈",
        en => "Crop Circle.HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkcropcircle/",
            meta: [
                "about" => "本專頁核心價值和使命\n願景：回應時代需要，實踐天國價值\n使命：與世代同行、對話、提供心靈支援",
                "categories" => [
                    "Society & culture website",
                    "Media"
                ],
                "email" => "hk.cropcircle@gmail.com",
                "id" => "396515671221386"
            ]
        },
        {
            url: "https://www.instagram.com/hkcropcircle/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkcropcircle/posts/473828686823417"
        },
        {
            url: "https://www.facebook.com/hkcropcircle/posts/501254804080805"
        }
    ];
    public final tags:Array<Tag> = [];
}


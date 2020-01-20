package charleywong.entities;

class MountaineeringLohas implements Entity {
    public final id = "MountaineeringLohas";
    public final name = [
        zh => "嵐山樂活"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MountaineeringLohas/",
            meta: [
                "about" => "我們提供專業的山藝訓練、繩索技術 及 樂活課程。",
                "categories" => [
                    "Interest"
                ],
                "email" => "info@mountaineering-lohas.org"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MountaineeringLohas/posts/2140848699371775"
        },
        {
            url: "https://www.facebook.com/MountaineeringLohas/posts/2245544342235543"
        }
    ];
}


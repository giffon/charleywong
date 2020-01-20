package charleywong.entities;

class YolaHungMakeupStudio implements Entity {
    public final id = "yolahungmakeupstudio";
    public final name = [
        en => "Yola Hung Makeup Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/yolahungmakeupstudio/",
            meta: [
                "about" =>
                "Having over 17 years experience in the business, Yola has established herself as a highly respected and experienced make up artist in Hong Kong.",
                "categories" => [
                    "Makeup artist",
                    "Beauty salon"
                ],
                "addr" => "銅鑼灣蘭芳道9號4樓",
                "area" => "Hong Kong",
                "email" => "yolahung@gmail.com",
                "tel" => "93404630"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yolahungmakeupstudio/photos/a.10151538631216612/10156268225816612/"
        }
    ];
}


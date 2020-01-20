package charleywong.entities;

class Douryokujinja implements Entity {
    public final id = "douryokujinja";
    public final name = [
        zh => "動力神社"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/douryokujinja/",
            meta: [
                "about" => "動力神社是一個插畫品牌，希望能透過當中角色——水水的故事來治癒人心。城市的人都生病了，包括畫者本人也是，但透過水水能夠表達或抒發心中鬱悶。",
                "categories" => [
                    "Artist"
                ],
                "email" => "lpyshadow@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/douryokujinja/photos/a.407645539615716/998496617197269/"
        },
        {
            url: "https://www.facebook.com/douryokujinja/photos/a.407645539615716/988897354823862/"
        },
        {
            url: "https://www.facebook.com/douryokujinja/photos/a.407645539615716/966080420438889/"
        },
        {
            url: "https://www.facebook.com/douryokujinja/posts/916310172082581"
        }
    ];
}


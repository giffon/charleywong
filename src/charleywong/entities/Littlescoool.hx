package charleywong.entities;

class Littlescoool implements Entity {
    public final id = "littlescoool";
    public final name = [
        zh => "小食糖",
        en => "littlescoool"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/136992696983334/",
            meta: [
                "about" => "放學後的小時光",
                "categories" => [
                    "Taiwanese restaurant"
                ],
                "addr" => "尖沙咀彌敦道132號2樓",
                "area" => "Kowloon, Hong Kong",
                "tel" => "27717828",
                "id" => "136992696983334"
            ]
        },
        {
            url: "https://www.instagram.com/littlescoool_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/136992696983334/photos/a.147140275968576/425701688112432/"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=443853389630595&id=136992696983334"
        }
    ];
}


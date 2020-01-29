package charleywong.entities;

class Yanshangkee implements Entity {
    public final id = "Yanshangkee";
    public final name = [
        zh => "嫣裳記",
        en => "Yan Shang Kee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Yanshangkee/",
            meta: [
                "about" => "在一昧追求快的社會內，我們總是來去匆匆低著頭與這些美好的事物擦身而過，讓我們重拾昔日黃金時代的美好，穿上旗袍，漫步懷舊的香港街道，這個值得我們驕傲的香港--嫣裳記",
                "categories" => [
                    "Women\'s clothes shop"
                ],
                "addr" => "Flat C , 1/F, 16A Elgin Street,Central,Hong Kong",
                "area" => "Hong Kong",
                "email" => "yanshangkee@gmail.com",
                "id" => "1740042699648238"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Yanshangkee/videos/461630201208300/"
        },
        {
            url: "https://www.facebook.com/Yanshangkee/photos/a.1838504273135413/2519740428345124/"
        }
    ];
    public final tags:Array<Tag> = [];
}


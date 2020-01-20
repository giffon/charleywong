package charleywong.entities;

class JoewinHatu implements Entity {
    public final id = "JoewinHatu";
    public final name = [
        zh => "喵大人蝦條",
        en => "Mr Hatu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/JoewinHatu/",
            meta: [
                "about" => "2013年9月14日... 我唔再係流浪貓，我終於返屋企了！呢度就係我五星級的家呀喵！\n.\n尊重生命 愛護動物\n支持領養不棄養",
                "categories" => [
                    "Adoption service",
                    "Animal"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/mrhatu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JoewinHatu/posts/2807977642618061"
        },
        {
            url: "https://www.facebook.com/JoewinHatu/photos/a.581258701956644/2488879534527875/"
        },
        {
            url: "https://www.facebook.com/JoewinHatu/posts/2714089562006870"
        }
    ];
}


package charleywong.entities;

class HOCC implements Entity {
    public final id = "HOCCHOCC";
    public final name = [
        en => "HOCC"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hall1c.com"
        },
        {
            url: "https://www.facebook.com/HOCCHOCC/",
            meta: [
                "about" => "www.hall1c.com",
                "categories" => [
                    "Public figure"
                ],
                "email" => "info@goomusic.com.hk"
            ]
        },
        {
            url: "https://www.instagram.com/hoccgoomusic/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HOCCHOCC/videos/457424275193923/"
        },
        {
            url: "https://www.facebook.com/HOCCHOCC/posts/10162010677440230"
        },
        {
            url: "https://www.facebook.com/HOCCHOCC/posts/10162152918460230"
        }
    ];
}


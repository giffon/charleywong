package charleywong.entities;

class RTHKVNEWS implements Entity {
    public final id = "RTHKVNEWS";
    public final name = [
        zh => "香港電台視像新聞",
        en => "RTHK VNEWS"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://news.rthk.hk/rthk/ch/video-gallery.htm"
        },
        {
            url: "https://www.facebook.com/RTHKVNEWS/",
            meta: [
                "about" => "香港電台視像新聞facebook專頁，提供最新視像新聞資訊。",
                "categories" => [
                    "Media/news company"
                ],
                "tel" => "23396300",
                "id" => "715486135226112"
            ]
        },
        {
            url: "https://www.instagram.com/rthk.vnews/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RTHKVNEWS/posts/2943036502471053"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


package charleywong.entities;

class WFBer implements Entity {
    public final id = "berwf";
    public final name = [
        en => "wF Ber"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.wfber.com"
        },
        {
            url: "https://www.facebook.com/berwf/",
            meta: [
                "id" => "142840579115745",
                "about" => "wF`Ber\n... .. ........\n自家手作店<Store-berry>主理人\n畫下呢樣畫下嗰樣, 服侍下兩隻貓",
                "categories" => [
                    "Personal blog",
                    "Artist",
                    "Art"
                ],
                "email" => "ber@wfber.com"
            ]
        },
        {
            url: "https://www.instagram.com/wfber/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/berwf/photos/a.212237852176017/2454632157936564/"
        },
        {
            url: "https://www.facebook.com/berwf/videos/513158862780623/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


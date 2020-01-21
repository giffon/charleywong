package charleywong.entities;

class Sparkalliancehk implements Entity {
    public final id = "sparkalliancehk";
    public final name = [
        zh => "星火同盟 抗爭支援"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sparkalliancehk/",
            meta: [
                "about" => "「星火同盟」出現於香港一個最為動盪的時代，我們確信只要能夠一同戰鬥下去，必可為我城帶來光輝的時代。",
                "categories" => [
                    "Non-profit organisation"
                ],
                "addr" => "香港九龍尖沙咀郵政信箱 98697 號",
                "area" => "Hong Kong",
                "tel" => "64616642"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sparkalliancehk/posts/2647302068890242"
        },
        {
            url: "https://www.facebook.com/sparkalliancehk/photos/a.1989972677956521/2569336213353495/"
        }
    ];
}


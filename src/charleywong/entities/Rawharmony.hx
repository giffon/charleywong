package charleywong.entities;

class Rawharmony implements Entity {
    public final id = "rawharmony";
    public final name = [
        zh => "原始和聲",
        en => "Raw Harmony"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://youtube.com/c/原始和聲RawHarmony"
        },
        {
            url: "https://www.facebook.com/rawharmony/",
            meta: [
                "id" => "473836902992761",
                "about" => "YHOP Music.\n《青少年禱告之家》原創音樂分享平台。\n...\n\n\n\n\nSee more",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "yhophk@incubatorministries.asia",
                "tel" => "29671844"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rawharmony/posts/962683820774731"
        },
        {
            url: "https://www.facebook.com/rawharmony/posts/975550649488048"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}


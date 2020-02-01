package charleywong.entities;

class SpeakTeeHK implements Entity {
    public final id = "speakteehk";
    public final name = [
        en => "Speak Tee HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/speakteehk/",
            meta: [
                "id" => "101405337882177",
                "about" => "所有收入扣除成本後, 全數捐贈612人道支援基金/ 星火同盟 抗爭支援",
                "categories" => [
                    "Clothing (brand)"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/speakteehk/photos/a.128008958555148/109742617048449/"
        },
        {
            url: "https://www.facebook.com/speakteehk/photos/a.128008958555148/154178992604811/"
        }
    ];
    public final tags:Array<Tag> = [
        clothing
    ];
}


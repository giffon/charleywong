package charleywong.entities;

class Tsaiingwen implements Entity {
    public final id = "tsaiingwen";
    public final name = [
        zh => "蔡英文",
        en => "Tsai Ing-wen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.president.gov.tw"
        },
        {
            url: "https://www.facebook.com/tsaiingwen/",
            meta: [
                "id" => "46251501064",
                "about" => "「台灣的好，不應該輕易被擊倒。當新時代已經敲門，我們必須把門打開，讓世界看見台灣的好。」",
                "categories" => [
                    "Politician"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/tsai_ingwen/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tsaiingwen/photos/a.10151242056081065/10155882423611065/"
        }
    ];
    public final tags:Array<Tag> = [];
}


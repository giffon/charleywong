package charleywong.entities;

class Daydreamingcrew implements Entity {
    public final id = "daydreamingcrew";
    public final name = [
        zh => "空姐發夢日記",
        en => "A daydreamer\'s diary"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/daydreamingcrew/",
            meta: [
                "id" => "720908984594955",
                "about" => "常常發夢, 喜歡吃喝玩樂, 胡亂寫作, 不稱職的空姐就是我。\n\nig :genie1184\ncontact:genie1184dream@gmail.com",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/daydreamingcrew/photos/a.720932184592635/2896766333675865/"
        },
        {
            url: "https://www.facebook.com/daydreamingcrew/photos/a.750630348289485/2844914495527716/"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        publicfigure
    ];
}


package charleywong.entities;

class Livingbookspacehk implements Entity {
    public final id = "livingbookspacehk";
    public final name = [
        zh => "生活書社"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/livingbookspacehk/",
            meta: [
                "about" => "從覺得「理所當然」的生活和人與人之間的相遇中慢慢踏實的活好，建立由自己定義生活的底氣。書、雜貨、故事、環境、人在不同時空偶遇，閱讀，碰撞，共生。共同活出我們的路來。",
                "categories" => [
                    "Book shop",
                    "Grocers"
                ],
                "addr" => "元朗鳳攸北街5-7號順豐大廈39號地鋪",
                "area" => "Yuen Long",
                "email" => "livingbookspace@gmail.com",
                "tel" => "66906081",
                "id" => "1712924702253200"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/livingbookspacehk/posts/2407078936171103"
        }
    ];
    public final tags:Array<Tag> = [];
}


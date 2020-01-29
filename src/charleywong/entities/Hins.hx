package charleywong.entities;

class Hins implements Entity {
    public final id = "ahhins819";
    public final name = [
        en => "Hins"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/arearehin"
        },
        {
            url: "https://www.facebook.com/ahhins819/",
            meta: [
                "id" => "204321446389047",
                "about" => "2013年開始正式開始個人的Youtube頻道。\n影片類型以個人生活點滴，旅遊，產品開箱及遊戲實況為主。而實況過程更會務求跟每一位觀眾互動亦是我的原則。",
                "categories" => [
                    "Producer"
                ],
                "email" => "ahhin2031@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ahhins819/posts/1495156693972176"
        }
    ];
    public final tags:Array<Tag> = [];
}


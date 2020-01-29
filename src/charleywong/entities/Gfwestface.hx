package charleywong.entities;

class Gfwestface implements Entity {
    public final id = "gfwestface";
    public final name = [
        zh => "十萬個激嬲女友的理由"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://gfwestface.com"
        },
        {
            url: "https://www.facebook.com/gfwestface/",
            meta: [
                "id" => "318541125213110",
                "about" => "一個page見盡各式各樣嘅女人發嬲西面理由。\n各位男士們，共勉之，you are not alone ！\n歡迎Inbox我哋或者到以下網址投稿(所有投稿會即時於投稿觀賞區登出) http://gfwestface.com/submission/",
                "categories" => [
                    "Community",
                    "Just for fun"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gfwestface/posts/984096535324229"
        }
    ];
    public final tags:Array<Tag> = [];
}


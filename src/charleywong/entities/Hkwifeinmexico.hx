package charleywong.entities;

class Hkwifeinmexico implements Entity {
    public final id = "hkwifeinmexico";
    public final name = [
        zh => "我的老墨日記"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkwifeinmexico/",
            meta: [
                "id" => "1656638947883645",
                "about" => "2015年夏天跟墨西哥老公從香港移居到墨西哥渡假天堂Cancun (坎昆)\n一年多後為了生活再次回流香港。\n從大都會到悠閒的小城鎮,由語言到文化, 香港人妻的每天的生活點滴.",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkwifeinmexico/photos/a.1656925021188371/2500577996823065/"
        },
        {
            url: "https://www.facebook.com/hkwifeinmexico/photos/a.1656925021188371/2441065432774322/"
        },
        {
            url: "https://www.facebook.com/hkwifeinmexico/posts/2426631304217735"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


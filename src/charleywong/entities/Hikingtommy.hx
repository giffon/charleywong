package charleywong.entities;

class Hikingtommy implements Entity {
    public final id = "hikingtommy";
    public final name = [
        zh => "行山達人"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hikingtommy.wordpress.com"
        },
        {
            url: "https://www.facebook.com/hikingtommy/",
            meta: [
                "id" => "1028836013898420",
                "about" => "香港以致世界各地行山、玩水、Camp好去處及分享運動裝備的心得。",
                "categories" => [
                    "Local & travel website",
                    "Hiking trail",
                    "Sports"
                ],
                "email" => "chungkaisun2012@gmail.com",
                "tel" => "67329930"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hikingtommy/posts/2531618756953464"
        }
    ];
    public final tags:Array<Tag> = [];
}


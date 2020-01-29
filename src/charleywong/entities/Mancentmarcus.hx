package charleywong.entities;

class Mancentmarcus implements Entity {
    public final id = "mancentmarcus";
    public final name = [
        zh => "國皇之家生活事"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mandyvincent.com"
        },
        {
            url: "https://www.facebook.com/mancentmarcus/",
            meta: [
                "id" => "299119716861333",
                "about" => "人氣親子博客blogger 記載成長日記 !! 專頁分享親子好去處，主題公園，旅遊，幼稚園小學面試，家庭育兒等\n\n國皇的婚禮 :www.mandyvincent.com",
                "categories" => [
                    "Personal blog"
                ],
                "email" => "mancentmarcus@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mancentmarcus/posts/2231074740332478"
        }
    ];
    public final tags:Array<Tag> = [];
}


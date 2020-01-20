package charleywong.entities;

class FolloMe implements Entity {
    public final id = "Follo3me";
    public final name = [
        zh => "隨我行",
        en => "FolloMe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Follo3me/",
            meta: [
                "about" => "【FolloMe 隨我行】我們是一班喜愛郊遊、行山、攝影與露營的都市香港人，希望把自己走過的路，經歷過的旅程，用文字、相片和影片分享給喜愛大自然的您。\n\n成立日期: 19 August 2015",
                "categories" => [
                    "Local & travel website",
                    "Hiking trail",
                    "Photography & videography"
                ],
                "email" => "follow2015atw@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Follo3me/photos/a.228722290820138/873884146303946/"
        }
    ];
}


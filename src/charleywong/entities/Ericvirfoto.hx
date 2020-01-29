package charleywong.entities;

class Ericvirfoto implements Entity {
    public final id = "ericvirfoto";
    public final name = [
        zh => "情旅攝",
        en => "Country Rider"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ericvirfoto/",
            meta: [
                "about" => "90後香港情侶，熱愛行山及風景攝影。因為喜愛大自然景色，讓我們走得更近。\n曾接受不同媒體訪問，並有負責拍攝大型廣告相片的經驗。\n\n歡迎任何合作, 請Inbox!\ninstagram:lezlebric / virginayip",
                "categories" => [
                    "Photographer"
                ],
                "email" => "lezlebric_v@ymail.com",
                "id" => "1607548872820652"
            ]
        },
        {
            url: "https://www.instagram.com/lezlebric/"
        },
        {
            url: "https://www.instagram.com/virginayip/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ericvirfoto/posts/2327419790833553"
        }
    ];
    public final tags:Array<Tag> = [];
}


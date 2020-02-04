package charleywong.entities;

class Friesfanatic implements Entity {
    public final id = "friesfanatic";
    public final name = [
        zh => "我係薯條控"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/fries_fanatic/"
        },
        {
            url: "https://www.facebook.com/friesfanatic/",
            meta: [
                "id" => "1061429167309926",
                "about" => "八十後，曾經接受《100毛》同埋《蘋果日報》訪問，目標係要食盡全香港所有好好味嘅薯條！\n\n逢星期六夜晚六點會有薯條推介，歡迎大家投稿 / PM有咩地方嘅薯條係值得去食。",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/friesfanatic/photos/a.1065512110234965/2640536466065847/"
        },
        {
            url: "https://www.facebook.com/friesfanatic/photos/a.1065512110234965/2441564999296329/"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        food
    ];
}


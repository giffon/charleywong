package charleywong.entities;

class TFOMountain implements Entity {
    public final id = "TFOMountain";
    public final name = [
        zh => "山脈旅孩"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/TFOMountain/",
            meta: [
                "about" => "The Fellowship of Mountain\n一米二身高, 用細小足印, 連群結隊, 踏遍每個山頭",
                "categories" => [
                    "Local & travel website",
                    "Photographer",
                    "Artist"
                ],
                "email" => "tfomountain@yahoo.com.hk",
                "id" => "1610185412544308"
            ]
        },
        {
            url: "https://www.instagram.com/tfomountain/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TFOMountain/posts/2478112502418257"
        },
        {
            url: "https://www.facebook.com/TFOMountain/videos/484938285424727/"
        },
        {
            url: "https://www.facebook.com/TFOMountain/photos/a.1627526014143581/2522905221272318/"
        },
        {
            url: "https://www.facebook.com/TFOMountain/posts/2492479517648222"
        }
    ];
}


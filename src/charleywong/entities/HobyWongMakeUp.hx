package charleywong.entities;

class HobyWongMakeUp implements Entity {
    public final id = "HobyWongMakeup";
    public final name = [
        en => "Hoby Wong MakeUp"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hobywongmakeup.net"
        },
        {
            url: "https://www.facebook.com/HobyWongMakeup/",
            meta: [
                "id" => "156470744450018",
                "about" => "提供各類型化妝服務，教授個人化妝班，以及博客品牌合作事宜，歡迎經inbox或電話查詢: 6088 7669",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "info@hobywongmakeup.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HobyWongMakeup/photos/a.498453370251752/2476107085819694/"
        }
    ];
}


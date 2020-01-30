package charleywong.entities;

class Instantphotohk implements Entity {
    public final id = "instantphotohk";
    public final name = [
        en => "Instant Photo & Photo Booth"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.instantphotohk.com"
        },
        {
            url: "https://www.facebook.com/instantphotohk/",
            meta: [
                "id" => "325605200881496",
                "about" => "服務範圍：婚禮或婚宴，企業活動和其他活動，如生日派對，萬聖節派對，週年晚宴等",
                "categories" => [
                    "Camera/photo",
                    "Photographer",
                    "Professional service"
                ],
                "email" => "instantphotohk@gmail.com",
                "tel" => "35680621"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/instantphotohk/photos/a.480557058719642/2382695078505821/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}


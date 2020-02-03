package charleywong.entities;

class YueDikWai implements Entity {
    public final id = "yuedikwai";
    public final name = [
        en => "Yue Dik Wai"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/yuedikwai/",
            meta: [
                "id" => "10465123622",
                "about" => "工作聯絡: dikwai903@gmail.com\nInstagram: dikwai",
                "categories" => [
                    "Public figure"
                ],
                "email" => "dikwai903@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/dikwai/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yuedikwai/photos/a.437820868622/10157691077233623/"
        },
        {
            url: "https://www.instagram.com/p/B0MBnpBnYLV/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


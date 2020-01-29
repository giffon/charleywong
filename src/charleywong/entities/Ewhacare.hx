package charleywong.entities;

class Ewhacare implements Entity {
    public final id = "Ewhacare";
    public final name = [
        zh => "梨花",
        en => "Ewha Care"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.ewha-care.com"
        },
        {
            url: "https://www.facebook.com/Ewhacare/",
            meta: [
                "id" => "298209563616016",
                "about" => "梨花的護膚化妝產品是經過嚴格的挑選和品質的把關，讓品質和美麗可以並肩而行，把優質的飾品分享給每個愛漂亮的妳們。",
                "categories" => [
                    "Skincare service",
                    "Cosmetics shop",
                    "Retail company"
                ],
                "addr" => "九龍觀塘開源道60號 駱駝漆大廈3座5樓A2室",
                "area" => "Kwun Tong",
                "email" => "ewha.care@gmail.com",
                "tel" => "23041777"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Ewhacare/photos/a.305491376221168/2113733005396987/"
        },
        {
            url: "https://www.facebook.com/Ewhacare/photos/a.305491376221168/2067521546684800/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


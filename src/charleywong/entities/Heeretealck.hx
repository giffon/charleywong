package charleywong.entities;

class Heeretealck implements Entity {
    public final id = "heeretea.lck";
    public final name = [
        zh => "Heeretea 荔枝角店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/heeretea.lck/",
            meta: [
                "about" => "荔枝角東喜茶 用誠意沖好每杯茶",
                "categories" => [
                    "Diner"
                ],
                "addr" => "青山道489-491號荔枝角香港工業中心A座地下5B鋪",
                "area" => "Hong Kong",
                "id" => "772297683149276"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/heeretea.lck/photos/a.798966383815739/1047880608924314/"
        },
        {
            url: "https://www.facebook.com/heeretea.lck/photos/a.798966383815739/1018902148488827/"
        }
    ];
}


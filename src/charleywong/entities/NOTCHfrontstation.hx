package charleywong.entities;

class NOTCHfrontstation implements Entity {
    public final id = "NOTCHfrontstation";
    public final name = [
        zh => "Notch咖啡 站前店-信陽街"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/NOTCHfrontstation/",
            meta: [
                "about" => "NOTCH咖啡在網路上被推薦、被分享、被轉載、被評為「老外推薦最適合工作的咖啡店。我們提供現烘的莊園咖啡豆，讓消費者用親切的價格，享受莊園咖啡的品質。",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "台北市中正區信陽街6號",
                "area" => "Taipei, Taiwan"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/NOTCHfrontstation/videos/425441158179350/"
        }
    ];
}


package charleywong.entities;

class Gunglok implements Entity {
    public final id = "gunglok";
    public final name = [
        zh => "共楽",
        en => "Gung Lok"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/gunglok/",
            meta: [
                "id" => "235713320116326",
                "about" => "共楽 Gung Lok 成立於 2016 年 6 月，共楽是一群飄洋過海的年青人計劃自己理想、工作和生活的空間，親力親為創造一個環境，一道簡單帶有溫度的家郷美食，分享我們喜愛的音樂、設計與藝術。",
                "categories" => [
                    "Hong Kong restaurant"
                ],
                "addr" => "赤峰街22號",
                "area" => "Taipei, Taiwan",
                "email" => "gunglokuniongrocery@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/gunglok/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gunglok/photos/a.269355803418744/920429524978032/"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Mimingmart implements Entity {
    public final id = "mimingmart";
    public final name = [
        zh => "彌明生活百貨",
        en => "MI MING MART"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mimingmart/",
            meta: [
                "about" => "MI MING MART由創辦人袁彌明Erica成立，多年來致力了解香港女性的皮膚問題及生活所需。作為堅持「0」傷害，所有產品由 Erica 親自挑選及認真試驗，產品均對身體及環境安全，拒絕動物測試。",
                "categories" => [
                    "Health/beauty",
                    "Skincare service"
                ],
                "addr" => "銅鑼灣Fashion Walk 記利佐治街11-19 地下35鋪",
                "area" => "Hong Kong",
                "email" => "cs@mimingmart.com",
                "id" => "167138230010680"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mimingmart/posts/2618763608181451"
        }
    ];
}


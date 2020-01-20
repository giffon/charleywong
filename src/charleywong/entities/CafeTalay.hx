package charleywong.entities;

class CafeTalay implements Entity {
    public final id = "cafetalayhk";
    public final name = [
        en => "CafeTalay"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cafetalayhk/",
            meta: [
                "about" => "\"ไม่เป็นไร！take it easy\"\n我們欣賞的就是這種泰國人「不打緊」口頭禪的豁達態度。希望透過精品咖啡，亞洲混合茶式為大家帶來此類新鮮的餐飲體驗。",
                "categories" => [
                    "Coffee shop",
                    "Restaurant",
                    "Grocers"
                ],
                "addr" => "Shop 1i, G/F, 118 Connaught Road West, Sai Ying Pun, H.K.",
                "area" => "Hong Kong",
                "email" => "info@cafetalay.com",
                "tel" => "69964614"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cafetalayhk/photos/a.131181204206314/381689935822105/"
        },
        {
            url: "https://www.facebook.com/cafetalayhk/photos/a.131181204206314/354705431853889/"
        }
    ];
}


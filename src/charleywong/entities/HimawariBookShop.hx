package charleywong.entities;

class HimawariBookShop implements Entity {
    public final id = "HimawariBookShop";
    public final name = [
        zh => "向日葵書屋",
        en => "Himawari Bookstore"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HimawariBookShop/",
            meta: [
                "about" => "向日葵書屋 - 日語學習・文化書店　主要售賣各類型學習日文書籍，日本手工藝書籍。歡迎光臨選擇。另外，亦接受訂購日本出版嘅各類書籍, CD, DVD，亦可以安排順豐，郵寄等送貨方法。",
                "categories" => [
                    "Independent book shop",
                    "Publisher"
                ],
                "addr" => "九龍觀塘駿業里6號 富利工業大廈8樓B室",
                "area" => "Hong Kong",
                "email" => "info@himawari.com.hk",
                "tel" => "25292259",
                "id" => "116856521730204"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HimawariBookShop/posts/2385958851486615"
        }
    ];
    public final tags:Array<Tag> = [];
}


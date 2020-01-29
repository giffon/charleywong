package charleywong.entities;

class CurryPotatoHouse implements Entity {
    public final id = "CurryPotatoHouse";
    public final name = [
        zh => "咖哩薯仔屋",
        en => "Curry Potato House"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CurryPotatoHouse/",
            meta: [
                "about" => "以木顏色一筆一筆地畫出客人的毛孩，印製上不同產品。無論主人到任何地方都可以帶著自己的毛孩，不再受地域限制。即使足不出戶的貓咪，都可以陪著主人到任何地方。\n\n歡迎來相繪畫寶貝",
                "categories" => [
                    "Product/service",
                    "Pet supplies",
                    "Art"
                ],
                "id" => "1081345721958969"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CurryPotatoHouse/posts/2647319692028223"
        },
        {
            url: "https://www.facebook.com/CurryPotatoHouse/photos/a.1123785231048351/2561865903906936/"
        }
    ];
    public final tags:Array<Tag> = [];
}


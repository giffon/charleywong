package charleywong.entities;

class NoMoreHeavy implements Entity {
    public final id = "nomoreheavy";
    public final name = [
        en => "No More Heavy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/nomoreheavy/",
            meta: [
                "about" => "No More Heavy是一個户外裝備和服飾的香港品牌。專注把產品的功能和美觀結合，把舒適時尚的戶外風格融入日常生活中。主張把裝備輕量化，享受最原本的大自然。",
                "categories" => [
                    "Outdoor equipment shop",
                    "Clothing (brand)"
                ],
                "email" => "nomoreheavy@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/nomoreheavy/photos/a.512486259288762/585643751973012/"
        },
        {
            url: "https://www.facebook.com/nomoreheavy/photos/a.512486259288762/567473313790056/"
        },
        {
            url: "https://www.facebook.com/nomoreheavy/photos/a.512486259288762/554839965053391/"
        }
    ];
}


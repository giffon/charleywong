package charleywong.entities;

class KatoyaHK implements Entity {
    public final id = "KatoyaHK";
    public final name = [
        zh => "加藤屋",
        en => "Katoya"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KatoyaHK/",
            meta: [
                "id" => "1665144723727685",
                "about" => "日式牛丼專門店\n\n給香港人多一個日式牛丼選擇，除牛丼外還有各式各樣的日式美食，繼有創新的麻辣牛肉/豚肉飯，各式的鐵板飯，有些分店還有港人最愛的火鍋可供選擇，仲唔快D嚟試下~~",
                "categories" => [
                    "Donburi restaurant"
                ],
                "email" => "cs@katoyahk.com",
                "tel" => "52954135"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KatoyaHK/posts/2421059911469492"
        },
        {
            url: "https://www.facebook.com/KatoyaHK/posts/2447929902115826"
        },
        {
            url: "https://www.facebook.com/KatoyaHK/posts/2341202642788553"
        }
    ];
}


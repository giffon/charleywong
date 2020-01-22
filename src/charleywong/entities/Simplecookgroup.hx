package charleywong.entities;

class Simplecookgroup implements Entity {
    public final id = "simplecookgroup";
    public final name = [
        zh => "煮回家"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/simplecookgroup/",
            meta: [
                "about" => "煮回家為繁忙嘅都市人提供了一個方便快捷、新派煮意的懶人包料理 ，只要花10-15分鐘的時間將懶人包放進滾水或者蒸熟就可以完成一枱好餸，為繁忙的都市人提供了一個回家吃飯的好選擇。",
                "categories" => [
                    "Food and drinks company"
                ],
                "email" => "simplecookgroup@gmail.com",
                "id" => "346196512090926"
            ]
        },
        {
            url: "https://www.facebook.com/kennedytownsimplecook/",
            meta: [
                "about" => "滿$500包送上門（住宅、商廈都可以），$500以下收$70運費\n煮回家有多款預先煮好的食材，讓你在家輕鬆做大廚！",
                "categories" => [
                    "Food delivery service"
                ],
                "addr" => "Shop 4, LG/F, Smithfield Walk, 45-51 Smithfield Road, Kennedy Town, Hong Kong",
                "area" => "Hong Kong",
                "tel" => "59925767",
                "id" => "118758825508841"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kennedytownsimplecook/posts/452219612162759"
        },
        {
            url: "https://www.facebook.com/simplecookgroup/posts/2636600506383837"
        },
        {
            url: "https://www.facebook.com/simplecookgroup/photos/a.586205131423395/2521443737899515/"
        }
    ];
}


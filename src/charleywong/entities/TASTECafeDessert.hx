package charleywong.entities;

class TASTECafeDessert implements Entity {
    public final id = "tastecafehk";
    public final name = [
        en => "TASTE Cafe & Dessert"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tastecafehk/",
            meta: [
                "id" => "1981472065464644",
                "about" => "由傳統意粉薄餅到加入創新元素嘅小食，我哋希望你會期待每一次嘅光臨。大廚會不停構思新菜式，務求用食物嚟留住你。",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "屯門青菱徑6號富麗大廈地下D1號鋪",
                "area" => "Tuen Mun",
                "email" => "tastecafehk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tastecafehk/posts/2547886645489847"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


package charleywong.entities;

class DearCoffeeBakery implements Entity {
    public final id = "dear.coffee.bakery";
    public final name = [
        en => "Dear Coffee & Bakery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dear.coffee.bakery/",
            meta: [
                "about" => "一間小店\n喜歡咖啡, 喜歡烘焙, 喜歡簡單的快樂\n...\n\n\n\n\nSee more",
                "categories" => [
                    "Coffee shop",
                    "Bakery",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "Shop 22 G/F, Holford Garden, 2-8 Chik Wan Street, Tai Wai, New Territories",
                "area" => "Hong Kong",
                "email" => "dear.coffee.bakery@gmail.com",
                "tel" => "26820093",
                "id" => "1014212055310056"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dear.coffee.bakery/photos/a.1018637958200799/2531569960240917/"
        },
        {
            url: "https://www.facebook.com/dear.coffee.bakery/photos/a.1018637958200799/2734463226618255/"
        }
    ];
}


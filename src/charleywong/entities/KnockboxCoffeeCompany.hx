package charleywong.entities;

class KnockboxCoffeeCompany implements Entity {
    public final id = "Knockboxcoffee";
    public final name = [
        en => "Knockbox Coffee Company"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Knockboxcoffee/",
            meta: [
                "about" => "When Coffee Blends with Art and Culture",
                "categories" => [
                    "Coffee shop",
                    "Restaurant",
                    "Bakery"
                ],
                "addr" => "旺角黑布街",
                "area" => "Mong Kok",
                "email" => "info@kbcoffee.com",
                "tel" => "27810363",
                "id" => "106209396147484"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Knockboxcoffee/photos/a.466649313436822/2228370877264648/"
        },
        {
            url: "https://www.facebook.com/Knockboxcoffee/photos/a.466649313436822/2051011148333956/"
        }
    ];
}


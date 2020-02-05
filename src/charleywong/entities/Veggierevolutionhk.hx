package charleywong.entities;

class Veggierevolutionhk implements Entity {
    public final id = "veggie.revolution.hk";
    public final name = [
        zh => "蔬菜革命"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/veggie.revolution.hk/"
        },
        {
            url: "https://www.facebook.com/veggie.revolution.hk/",
            meta: [
                "id" => "114582289952054",
                "about" => "提供最優質、優惠嘅蔬菜直達府上\n同真·香港人齊上齊落\n起呢個咁艱難嘅時刻，讓大家可以維持一個健康嘅生活...\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Wholesale and supply shop",
                    "Product/service",
                    "Retail company"
                ],
                "email" => "veggie.revolution.hk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/veggie.revolution.hk/posts/175605370516412"
        },
        {
            url: "https://www.facebook.com/veggie.revolution.hk/photos/a.115146856562264/161483705261912/"
        },
        {
            url: "https://www.facebook.com/veggie.revolution.hk/photos/a.115146856562264/157663108977305/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


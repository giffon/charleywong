package charleywong.entities;

class TanzaniaDreamProject implements Entity {
    public final id = "TanzaniaDreamProject";
    public final name = [
        en => "Tanzania Dream Project",
        zh => "珈啡公義"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.coffee-justice.com"
        },
        {
            url: "https://www.facebook.com/TanzaniaDreamProject/",
            meta: [
                "id" => "1692147411087612",
                "about" => "Drink Healthy Coffee and Bring Changes to Farmers and their Communities.",
                "categories" => [
                    "Product/service",
                    "Wholesale and supply shop",
                    "Merchandising service"
                ],
                "email" => "info.kahawa@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TanzaniaDreamProject/posts/2171321306503551"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


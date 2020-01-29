package charleywong.entities;

class Hottestloveshop implements Entity {
    public final id = "hottestloveshop";
    public final name = [
        en => "Hottestloveshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hottestloveshop/",
            meta: [
                "categories" => [
                    "Product/service",
                    "Clothing (brand)"
                ],
                "id" => "217525461624424"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hottestloveshop/posts/2437232856320329"
        },
        {
            url: "https://www.facebook.com/hottestloveshop/photos/a.2724438334266445/2724437457599866/"
        }
    ];
    public final tags:Array<Tag> = [];
}


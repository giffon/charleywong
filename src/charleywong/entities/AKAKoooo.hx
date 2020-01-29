package charleywong.entities;

class AKAKoooo implements Entity {
    public final id = "AKAKoooo";
    public final name = [
        en => "AKAKoooo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AKAKoooo/",
            meta: [
                "categories" => [
                    "Product/service"
                ],
                "id" => "1452494051687237"
            ]
        },
        {
            url: "https://www.instagram.com/akakoooo/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AKAKoooo/photos/a.1891524951117476/2540734709529827/"
        },
        {
            url: "https://www.facebook.com/AKAKoooo/posts/2412876162315683"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


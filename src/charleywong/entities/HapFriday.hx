package charleywong.entities;

class HapFriday implements Entity {
    public final id = "hapi.fridayyy";
    public final name = [
        en => "Hapí Friday"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hapi.fridayyy/",
            meta: [
                "about" => "Korean Fashion | Tarot | Life Sharing �\n\n「喜歡簡單舒適的衣著，舒服自在的生活態度。」...\n\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Clothing (brand)"
                ],
                "email" => "hapi.fridayyy@gmail.com",
                "tel" => "90648240"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hapi.fridayyy/photos/a.1084406895009653/2650213091762351/"
        },
        {
            url: "https://www.facebook.com/hapi.fridayyy/photos/a.461142987336050/2621074098009584/"
        }
    ];
}


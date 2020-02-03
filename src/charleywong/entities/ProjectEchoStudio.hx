package charleywong.entities;

class ProjectEchoStudio implements Entity {
    public final id = "projecho";
    public final name = [
        en => "Project Echo Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/projecho/",
            meta: [
                "id" => "534554016885312",
                "categories" => [
                    "Arts and entertainment"
                ],
                "addr" => "葵涌葵昌路1號,禎昌工業大廈",
                "area" => "Kwai Chung"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/projecho/photos/a.536154020058645/971601619847214/"
        },
        {
            url: "https://www.facebook.com/projecho/photos/a.537635733243807/992713814402661/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


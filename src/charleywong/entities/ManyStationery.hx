package charleywong.entities;

class ManyStationery implements Entity {
    public final id = "Many-Stationery-284019865315406";
    public final name = [
        zh => "文林文具",
        en => "Many Stationery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.many.hk/"
        },
        {
            url: "https://www.facebook.com/284019865315406/",
            meta: [
                "categories" => [
                    "Shopping & retail"
                ],
                "addr" => "65 G/F., Un Chau Street, Shamshuipo",
                "area" => "Kowloon, Hong Kong",
                "tel" => "23600789",
                "id" => "284019865315406"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/116926599686707/photos/a.119324169446950/125687488810618/"
        },
        {
            url: "https://www.facebook.com/284019865315406/photos/a.347541248963267/1019747861742599/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


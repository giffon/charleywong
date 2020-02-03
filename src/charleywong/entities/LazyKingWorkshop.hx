package charleywong.entities;

class LazyKingWorkshop implements Entity {
    public final id = "LAZYKING.Workshop";
    public final name = [
        en => "LazyKing Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://lazyking.hk"
        },
        {
            url: "https://www.facebook.com/LAZYKING.Workshop/",
            meta: [
                "id" => "31975824584",
                "about" => "Have a Lazy Day!",
                "categories" => [
                    "Business service",
                    "Advertising agency"
                ],
                "addr" => "Suite 2512, Langham Place Office Tower, 8 Argyle Street, Mongkok, Kowloon",
                "area" => "Hong Kong",
                "email" => "hello@lazyking.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LAZYKING.Workshop/photos/a.10152674666019585/10157010562569585/"
        },
        {
            url: "https://www.facebook.com/LAZYKING.Workshop/photos/a.10152674666019585/10156758229654585/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


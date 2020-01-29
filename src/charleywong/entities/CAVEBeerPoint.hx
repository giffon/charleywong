package charleywong.entities;

class CAVEBeerPoint implements Entity {
    public final id = "cavebeerpoint";
    public final name = [
        en => "CAVE Beer Point"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cavebeerpoint/",
            meta: [
                "about" => "\"your neighborhood shop for beer....premium beer!.... craft beer!\"\n\n精釀手工啤酒專門店",
                "categories" => [
                    "Beer Garden",
                    "Shopping & Retail"
                ],
                "addr" => "G/F, 116 Broadway, Mei Foo, Kowloon 九龍美孚百老匯街116號地下",
                "area" => "Kowloon, Hong Kong",
                "email" => "main.cavebeer@gmail.com",
                "id" => "678799468886607"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cavebeerpoint/photos/a.709557815810772/2176328895800316/"
        },
        {
            url: "https://www.facebook.com/cavebeerpoint/photos/a.683398825093338/2204757329624139/"
        },
        {
            url: "https://www.facebook.com/cavebeerpoint/photos/a.709557815810772/2188127394620466/"
        },
        {
            url: "https://www.facebook.com/cavebeerpoint/photos/a.709557815810772/2180177585415447/"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Krincemakhoyi implements Entity {
    public final id = "krincemakhoyi";
    public final name = [
        en => "Krince Mak",
        zh => "麥可怡"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/krincee/"
        },
        {
            url: "https://www.facebook.com/krincemakhoyi/",
            meta: [
                "id" => "936483789872337",
                "about" => "Job contact | vitazvaniniltd@gmail.com | 6184 1398 Gratiano Wong",
                "categories" => [
                    "Actor"
                ],
                "email" => "vitazvaniniltd@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/krincemakhoyi/photos/a.936498329870883/1107711279416253/"
        },
        {
            url: "https://www.facebook.com/krincemakhoyi/photos/a.936498329870883/1104645529722828/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        publicfigure
    ];
}


package charleywong.entities;

class JacksonNgArt implements Entity {
    public final id = "jacksonngart";
    public final name = [
        en => "Jackson Ng Art"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jacksonngart/",
            meta: [
                "id" => "671077866269089",
                "about" => "I love comics",
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jacksonngart/photos/a.787021871341354/2549926161717574/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


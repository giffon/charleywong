package charleywong.entities;

class NamiGroupHK implements Entity {
    public final id = "NamiGroupHK";
    public final name = [
        zh => "納米創作"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/NamiGroupHK/",
            meta: [
                "id" => "106856720663515",
                "categories" => [
                    "Video creator"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/NamiGroupHK/videos/508317336640947/"
        },
        {
            url: "https://www.facebook.com/NamiGroupHK/videos/372497920292749/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


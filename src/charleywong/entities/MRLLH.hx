package charleywong.entities;

class MRLLH implements Entity {
    public final id = "LLHstory";
    public final name = [
        en => "MR LLH"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LLHstory/",
            meta: [
                "id" => "389950351167766",
                "about" => "LLH\n《秘密後花園》、《廢青回憶錄》作者\n...\n\n\nSee more",
                "categories" => [
                    "Author"
                ],
                "email" => "luilh1114@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/LLH.story/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LLHstory/photos/a.390582724437862/1255808541248605/"
        },
        {
            url: "https://www.facebook.com/LLHstory/photos/a.390582724437862/1262191653943627/"
        },
        {
            url: "https://www.facebook.com/LLHstory/photos/a.390582724437862/1305996399563152/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


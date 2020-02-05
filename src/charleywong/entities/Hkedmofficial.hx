package charleywong.entities;

class Hkedmofficial implements Entity {
    public final id = "hkedmofficial";
    public final name = [
        en => "HongKong Edm",
        zh => "香港電子音樂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/hongkong.edm.official"
        },
        {
            url: "https://www.facebook.com/hkedmofficial/",
            meta: [
                "id" => "179264976069266",
                "about" => "————\n�EDM Lifestyle |\n#Peace #Love #Unity #Respect...\n\n\nSee more",
                "categories" => [
                    "Media/news company",
                    "Social club"
                ],
                "addr" => "LanKwaiFong",
                "area" => "Central, Hong Kong"
            ]
        },
        {
            url: "https://www.instagram.com/hongkong.edm.official/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkedmofficial/videos/491667724737305/"
        },
        {
            url: "https://www.facebook.com/hkedmofficial/posts/429807437681684"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        media
    ];
}


package charleywong.entities;

class Cuspcusp implements Entity {
    public final id = "cuspcusp";
    public final name = [
        zh => "中大學生報"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://cusp.hk"
        },
        {
            url: "https://www.facebook.com/cuspcusp/",
            meta: [
                "id" => "503084439752305",
                "about" => "香港中文大學學生會中大學生報\nChinese University Student Press\n...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Media/news company",
                    "Magazine"
                ],
                "email" => "cusp@cusp.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cuspcusp/videos/2567369363293916/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


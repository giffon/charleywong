package charleywong.entities;

class Pearlcatcat implements Entity {
    public final id = "pearlcatcat";
    public final name = [
        en => "Pearlcatcat"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/pearlcatcat/",
            meta: [
                "about" => "香港獨立出版 原創設計 手作\n// Pinkoi.com/pearlcactat //\n香港藝術中心Art Shop\n突破書廊\n見山書店",
                "categories" => [
                    "Art"
                ],
                "email" => "pearlcatcathk@gmail.com",
                "id" => "1515264865408456"
            ]
        },
        {
            url: "https://www.instagram.com/pearlcatcat/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pearlcatcat/posts/2352959541638980"
        },
        {
            url: "https://www.facebook.com/pearlcatcat/photos/a.1532015777066698/2508025389465727/"
        },
        {
            url: "https://www.facebook.com/pearlcatcat/photos/a.1532015777066698/2480227278912205/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        accessories
    ];
}


package charleywong.entities;

class JANPictures implements Entity {
    public final id = "janpictureshk";
    public final name = [
        en => "JAN Pictures"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/janpictureshk/",
            meta: [
                "about" => "Wedding Day Photo, Pre wedding Photo, Big day Photo in Hong Kong. Hong Kong Wedding Photographer",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "Suite 06-07, 19/F, Clifford Centre, 778-784 Cheung Sha Wan Road, Kowloon",
                "area" => "Hong Kong",
                "email" => "info@jan.hk",
                "tel" => "94498907",
                "id" => "134748554021058"
            ]
        },
        {
            url: "https://www.instagram.com/janpictures_/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/janpictureshk/posts/546085286220714"
        },
        {
            url: "https://www.facebook.com/janpictureshk/photos/a.150550402440873/548306382665271/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}


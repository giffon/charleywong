package charleywong.entities;

class Hkphrc implements Entity {
    public final id = "hkphrc";
    public final name = [
        zh => "公共衞生研究社"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hkphrc.com"
        },
        {
            url: "https://www.facebook.com/hkphrc/",
            meta: [
                "id" => "2307257426229617",
                "about" => "公共衞生研究社是由民間自發，於2019年成立的研究組織。我們希望透過實證為本的研究和考察，探討香港的醫療及公共衞生發展，並推動本地的健康素養和參與衞生政策倡議。",
                "categories" => [
                    "Community"
                ],
                "email" => "contact@hkphrc.com",
                "tel" => "67913386"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkphrc/posts/2419614654993893"
        },
        {
            url: "https://www.facebook.com/hkphrc/posts/2350414155247277"
        }
    ];
    public final tags:Array<Tag> = [
        medical,
        organization
    ];
}


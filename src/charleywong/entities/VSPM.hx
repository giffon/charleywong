package charleywong.entities;

class VSPM implements Entity {
    public final id = "vspmhk";
    public final name = [
        en => "VSPM"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://vspmhk.blogspot.hk"
        },
        {
            url: "https://www.facebook.com/vspmhk/",
            meta: [
                "id" => "421549637894498",
                "about" =>
                "Provide Photography,Make Up,Hair,Course,Nail,Styling Service for Wedding,Engagement,Commercial.\nFor More Details Tel:97199961(vspmhk@gmail.com)",
                "categories" => [
                    "Photographer",
                    "Makeup artist"
                ],
                "addr" => "九龍尖沙咀漆咸道南87-105號百利商業中心地下G52",
                "area" => "Tsim Sha Tsui",
                "email" => "vspmhk@gmail.com",
                "tel" => "97199961"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/vspmhk/photos/a.488289214553873/2513678488681592/"
        }
    ];
}


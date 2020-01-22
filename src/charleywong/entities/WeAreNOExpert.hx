package charleywong.entities;

class WeAreNOExpert implements Entity {
    public final id = "wearenoexpert";
    public final name = [
        en => "We Are NO Expert"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wearenoexpert/",
            meta: [
                "about" => "We Are No Expert green platform",
                "categories" => [
                    "Shopping & retail",
                    "Health Food Shop",
                    "Skincare service"
                ],
                "addr" => "Kiosk 05 of Shop No.201 on Level 2 of K11, No.18 Hanoi Road, Tsim Sha Tsui, Kowloon",
                "area" => "Hong Kong",
                "email" => "wearenoexpert@gmail.com",
                "tel" => "54092576",
                "id" => "340411489384701"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wearenoexpert/posts/2654093951349765"
        }
    ];
}


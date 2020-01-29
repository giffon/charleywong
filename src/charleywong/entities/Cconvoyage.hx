package charleywong.entities;

class Cconvoyage implements Entity {
    public final id = "cconvoyage";
    public final name = [
        zh => "旅孩手記",
        en => "CConvoyage"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cconvoyage/",
            meta: [
                "about" => "旅行｜美食｜攝影｜日常\n\n貪心貪玩又貪吃的處女座女生。...\n\n\n\n\nSee more",
                "categories" => [
                    "Personal blog"
                ],
                "email" => "hello@cconvoyage.com",
                "id" => "188278258201054"
            ]
        },
        {
            url: "https://www.instagram.com/cconvoyage/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cconvoyage/posts/880062042356002"
        },
        {
            url: "https://www.facebook.com/cconvoyage/photos/a.190332264662320/955576011471271/"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class MingYungPhoto implements Entity {
    public final id = "MingYungPhoto.hk";
    public final name = [
        en => "Ming Yung Photo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mingyungphoto.com/mingyung"
        },
        {
            url: "https://www.facebook.com/MingYungPhoto.hk/",
            meta: [
                "id" => "134742349916500",
                "about" => "香港Best 10婚禮攝影師Ming Yung",
                "categories" => [
                    "Wedding planning service",
                    "Photographer"
                ],
                "email" => "ming@mingyungphoto.com",
                "tel" => "65331537"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MingYungPhoto.hk/photos/a.575691919154872/2648444625212914/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}


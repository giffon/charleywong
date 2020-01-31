package charleywong.entities;

class SeeseMakeUp implements Entity {
    public final id = "SeeseMakeUp";
    public final name = [
        en => "Seese Make Up"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/SeeseMakeUp/",
            meta: [
                "id" => "297939130332041",
                "about" =>
                "Professional makeup and image service\n(Wedding/ Event/ Fashion/ Commercial )\nE-mail : nonouo424@yahoo.com.hk\nTel: 66889653 (Seese Lam)",
                "categories" => [
                    "Makeup artist"
                ],
                "addr" => "ON SHING INDUSTRIAL BUILDING",
                "area" => "Fo Tan",
                "email" => "nonouo424@yahoo.com.hk",
                "tel" => "66889653"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SeeseMakeUp/photos/a.423094971149789/2354009264725007/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}


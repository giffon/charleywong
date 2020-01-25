package charleywong.entities;

class DEEIMAGE implements Entity {
    public final id = "DeeImagePhotography";
    public final name = [
        en => "DEE IMAGE"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://deeimage.weebly.com"
        },
        {
            url: "https://www.facebook.com/DeeImagePhotography/",
            meta: [
                "id" => "581635018513522",
                "about" => "Professional Photography Services for Wedding, Pregnancy, Family and Kids Event, Drama, etc.\nhttp://deeimage.weebly.com",
                "categories" => [
                    "Photographer",
                    "Camera/photo",
                    "Event"
                ],
                "tel" => "54855997"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/DeeImagePhotography/photos/a.629967183680305/2922273514449649/"
        }
    ];
}


package charleywong.entities;

class CSPhotographyHongKong implements Entity {
    public final id = "CSPSHK";
    public final name = [
        en => "CS Photography Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://csphotohk.com"
        },
        {
            url: "https://www.facebook.com/CSPSHK/",
            meta: [
                "id" => "167563613293787",
                "about" =>
                "2018 - “ Always Better Together ”\nOverseas / Hong Kong / Macau Pre Wedding & Wedding Day\nmore photos : http://www.csphotohk.com\nmore videos : http://vimeo.com/csphotohk",
                "categories" => [
                    "Photographer",
                    "Camera/photo",
                    "Event videographer"
                ],
                "email" => "info@csphotohk.com",
                "tel" => "64409903"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CSPSHK/posts/2775284709188318"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding,
    ];
}


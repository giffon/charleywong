package charleywong.entities;

class PulppyHK implements Entity {
    public final id = "pulppyhk";
    public final name = [
        en => "Pulppy HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.pulppy.com"
        },
        {
            url: "https://www.facebook.com/pulppyhk/",
            meta: [
                "id" => "2201023303514204",
                "about" => "Pulppy寶碧 細心呵護你、在乎你!",
                "categories" => [
                    "Product/service"
                ],
                "email" => "info_hk@pulppy.com",
                "tel" => "24672173"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pulppyhk/photos/a.2229029574046910/2429069194042946/"
        },
        {
            url: "https://www.facebook.com/pulppyhk/photos/a.2229029574046910/2389958941287305/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


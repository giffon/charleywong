package charleywong.entities;

class MOsproduction implements Entity {
    public final id = "139245916132421";
    public final name = [
        en => "MO\'s production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mosproduction.com"
        },
        {
            url: "https://www.facebook.com/139245916132421/",
            meta: [
                "id" => "139245916132421",
                "about" => "www.mosproduction.com\nEmail: info@mosproduction.com",
                "categories" => [
                    "Camera/photo",
                    "Visual arts"
                ],
                "email" => "info@mosproduction.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/139245916132421/photos/a.324329617624049/2671933496196971/"
        }
    ];
}


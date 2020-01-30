package charleywong.entities;

class OhJoyceFloralInspiration implements Entity {
    public final id = "ohjoycedesign";
    public final name = [
        en => "Oh Joyce : Floral + Inspiration"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://ohjoyce.smugmug.com"
        },
        {
            url: "https://www.facebook.com/ohjoycedesign/",
            meta: [
                "id" => "123568827684781",
                "about" =>
                "We bring you happy flowers for : surprise gift + corporate event + wedding :)\n\ne / info@ohjoyce.com\nwhatsapp / 9130 9865\nig / @ohjoyce",
                "categories" => [
                    "Product/service"
                ],
                "email" => "info@ohjoyce.com",
                "tel" => "34802118"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ohjoycedesign/photos/a.704347942940197/3281811341860498/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}


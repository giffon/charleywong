package charleywong.entities;

class TheHourGallery implements Entity {
    public final id = "TheHourGallery";
    public final name = [
        en => "The Hour Gallery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.thehourgallery.com"
        },
        {
            url: "https://www.facebook.com/TheHourGallery/",
            meta: [
                "id" => "1697020067183787",
                "about" =>
                "The Hour Gallery provides professional photography service\n- wedding photography\n- engagement portrait\n- professional portrait\n- family portrait",
                "categories" => [
                    "Camera/photo"
                ],
                "email" => "info@thehourgallery.com",
                "tel" => "98103466"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TheHourGallery/photos/a.1742382679314192/2492470197638766/"
        },
        {
            url: "https://www.facebook.com/TheHourGallery/photos/a.1706370799582047/2496955793856873/"
        },
        {
            url: "https://www.facebook.com/TheHourGallery/photos/a.1706370799582047/2494995214052931/"
        }
    ];
    public final tags:Array<Tag> = [];
}


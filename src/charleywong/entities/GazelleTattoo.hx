package charleywong.entities;

class GazelleTattoo implements Entity {
    public final id = "gazelletattoo";
    public final name = [
        en => "Gazelle Tattoo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.gazelletattoo.com"
        },
        {
            url: "https://www.facebook.com/gazelletattoo/",
            meta: [
                "id" => "991629594261926",
                "about" => "Tattoo Artist:\nIris Lam\niris@gazelletattoo.com...\n\n\nSee more",
                "categories" => [
                    "Tattoo & piercing shop",
                    "Artist"
                ],
                "addr" => "Room 319, 3/F, Metro Centre II, 21 Lam Hing Street, Kowloon Bay",
                "area" => "Hong Kong",
                "email" => "iris@gazelletattoo.com",
                "tel" => "61076992"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gazelletattoo/photos/a.996240843800801/2690941474330721/"
        },
        {
            url: "https://www.facebook.com/gazelletattoo/photos/a.996240843800801/2670687566356112/"
        },
        {
            url: "https://www.facebook.com/gazelletattoo/photos/a.996240843800801/2620212708070265/"
        }
    ];
    public final tags:Array<Tag> = [];
}


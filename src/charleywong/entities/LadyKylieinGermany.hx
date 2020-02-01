package charleywong.entities;

class LadyKylieinGermany implements Entity {
    public final id = "LadyKylieHK";
    public final name = [
        en => "LadyKylie in Germany"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.ladykylie.com"
        },
        {
            url: "https://www.facebook.com/LadyKylieHK/",
            meta: [
                "id" => "94802341615",
                "about" =>
                "Medium: https://medium.com/@kyliecthapthong\nTR: https://twitter.com/ladykyliealien\nUtube: www.youtube.com/user/LadyKyliecom...\n\n\nSee more",
                "categories" => [
                    "Artist",
                    "Education website"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/kyliethapthong/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LadyKylieHK/photos/a.10156359838896616/10156896915791616/"
        },
        {
            url: "https://www.facebook.com/LadyKylieHK/photos/a.10150991308096616/10156877111036616/"
        },
        {
            url: "https://www.instagram.com/p/B1FAzh4oiFT/"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        artist
    ];
}


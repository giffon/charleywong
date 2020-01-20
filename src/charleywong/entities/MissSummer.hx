package charleywong.entities;

class MissSummer implements Entity {
    public final id = "lolitasummer";
    public final name = [
        en => "Miss Summer"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lolitasummer/",
            meta: [
                "about" => "Handcrafted floral accessories for those with dreams in head.",
                "categories" => [
                    "Jewellery/watches",
                    "Accessories"
                ],
                "email" => "miss.summer.shop@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/lolitasummer/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lolitasummer/photos/a.117781443422/10157198693848423/"
        },
        {
            url: "https://www.facebook.com/lolitasummer/photos/a.117781443422/10156931851838423/"
        }
    ];
}


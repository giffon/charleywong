package charleywong.entities;

class PHOON implements Entity {
    public final id = "phoonhk";
    public final name = [
        en => "PHOON"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://twitter.com/PHOON_band"
        },
        {
            url: "https://www.facebook.com/phoonhk/",
            meta: [
                "categories" => [
                    "Performing arts",
                    "Musician/band"
                ],
                "email" => "phoonofficial@gmail.com",
                "id" => "1473503632979826"
            ]
        },
        {
            url: "https://www.instagram.com/phoon.official/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/B1Ykn7BApTf/"
        },
        {
            url: "https://www.instagram.com/p/B1lVSXbA0C_/"
        }
    ];
}


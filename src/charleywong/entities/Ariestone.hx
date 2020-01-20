package charleywong.entities;

class Ariestone implements Entity {
    public final id = "accessariestone";
    public final name = [
        en => "Ariestone"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/accessariestone/",
            meta: [
                "about" =>
                "Ariestone @ Access\nCombination of Metals & Stones\nPassionate to work on combining the natural stones and craftsmanship as art piece...\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Arts and crafts shop",
                    "Jewellery/watches"
                ],
                "addr" => "Shop 223, 2/F",
                "area" => "Hong Kong",
                "email" => "accessariestone@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/accessariestone/photos/a.142962676163297/819059825220242/"
        },
        {
            url: "https://www.facebook.com/accessariestone/photos/a.142962676163297/842813596178198/"
        },
        {
            url: "https://www.facebook.com/accessariestone/photos/a.142962676163297/835985430194348/"
        }
    ];
}


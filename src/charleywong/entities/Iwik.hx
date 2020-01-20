package charleywong.entities;

class Iwik implements Entity {
    public final id = "iwikart";
    public final name = [
        en => "Iwik"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/iwikart/",
            meta: [
                "about" => "Full time art and nature lover from Hong Kong, on the way to draw my dream.\nI also work as a paediatrician when im not drawing.",
                "categories" => [
                    "Artist"
                ],
                "email" => "iwikears@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/iwikart/posts/2371543629764666"
        },
        {
            url: "https://www.facebook.com/iwikart/photos/a.1747731328812569/2386106254975070/"
        }
    ];
}


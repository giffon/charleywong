package charleywong.entities;

class KOLOR implements Entity {
    public final id = "KOLORHK";
    public final name = [
        en => "KOLOR"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KOLORHK/",
            meta: [
                "about" => "www.facebook.com/kolorhk",
                "categories" => [
                    "Musician/band"
                ],
                "id" => "91306178236"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KOLORHK/photos/a.10151035087498237/10156771811143237/"
        }
    ];
}


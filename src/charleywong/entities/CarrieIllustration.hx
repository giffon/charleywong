package charleywong.entities;

class CarrieIllustration implements Entity {
    public final id = "carriedraw";
    public final name = [
        en => "Carrie Illustration"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/carriedraw/",
            meta: [
                "about" => "插畫 | 手作 | 香港\nInstagram - carriedraw\nPinkoi網店 - www.pinkoi.com/carriedraw",
                "categories" => [
                    "Artist"
                ],
                "email" => "kaheicarrie@gmail.com",
                "id" => "138872126137331"
            ]
        },
        {
            url: "https://www.instagram.com/carriedraw/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/carriedraw/photos/a.146112665413277/2774644472560070/"
        }
    ];
    public final tags:Array<Tag> = [];
}


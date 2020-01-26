package charleywong.entities;

class DulcisFlorist implements Entity {
    public final id = "dulcisflorist";
    public final name = [
        en => "DulcisFlorist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dulcisflorist/",
            meta: [
                "id" => "193300034632819",
                "about" => "Tailor made floral art\n韓國B.H.L專業花藝師",
                "categories" => [
                    "Art",
                    "Wedding planning service",
                    "Gift shop"
                ],
                "email" => "dulcisflorist@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dulcisflorist/photos/a.194051094557713/397439137552240/"
        }
    ];
}


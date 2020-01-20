package charleywong.entities;

class OliverMa implements Entity {
    public final id = "oliverma21";
    public final name = [
        en => "Oliver Ma"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oliverma21/",
            meta: [
                "about" =>
                "Oliver Ma is a 20-year-old mixed Chinese-Filipino. Born in January 21,1999 and raised from a humble beginning in Hong Kong, he aspires to be one of the biggest pop stars in the world.",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "mafuchioliver1234567890@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/https%3A%2F%2Fwww.instagram.com%2Foliverma21/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oliverma21/posts/1414729662021132"
        },
        {
            url: "https://www.facebook.com/oliverma21/posts/1345081952319237"
        }
    ];
}


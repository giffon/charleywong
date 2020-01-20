package charleywong.entities;

class Catseyeworkshop implements Entity {
    public final id = "catseyeworkshop";
    public final name = [
        zh => "貓眼工作室",
        en => "Cat\'s Eye Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/catseyeworkshop/",
            meta: [
                "about" => "貓眼工作室\n\n‧ 讓你把手作意念化為現實...\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Arts and crafts shop",
                    "Art",
                    "Performance & event venue"
                ],
                "addr" => "北角和富道74-82號仁寶閣閣樓 B室",
                "area" => "Hong Kong",
                "email" => "catseyeworkshop@gmail.com",
                "tel" => "95809580"
            ]
        },
        {
            url: "https://www.instagram.com/catseyeworkshop/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/catseyeworkshop/photos/a.1600880886853706/2359479234327197/"
        },
        {
            url: "https://www.facebook.com/catseyeworkshop/photos/a.1600880886853706/2375681706040283/"
        },
        {
            url: "https://www.facebook.com/catseyeworkshop/photos/a.1600880886853706/2242920809316374/"
        }
    ];
}


package charleywong.entities;

class Feidoucoffee implements Entity {
    public final id = "feidoucoffee";
    public final name = [
        zh => "竇啡",
        en => "Fei-Dou"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/feidoucoffee/",
            meta: [
                "about" => "以一方之隅談談說說咖啡。/\nSpeciality Coffee Shop Guide Map.",
                "categories" => [
                    "Broadcasting & media production company"
                ],
                "email" => "info@fei-dou.coffee",
                "tel" => "94490214"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/feidoucoffee/posts/1456989534458562"
        },
        {
            url: "https://www.facebook.com/feidoucoffee/posts/1460797280744454"
        },
        {
            url: "https://www.facebook.com/feidoucoffee/posts/1420541938103322"
        }
    ];
}


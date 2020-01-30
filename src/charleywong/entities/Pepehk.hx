package charleywong.entities;

class Pepehk implements Entity {
    public final id = "pepelovehk";
    public final name = [
        en => "Pepe.hk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.pepe.hk"
        },
        {
            url: "https://www.facebook.com/pepelovehk/",
            meta: [
                "id" => "113698263356194",
                "about" => "Do you hear the pepe sing?",
                "categories" => [
                    "Politician"
                ],
                "email" => "info@pepe.hk",
                "tel" => "56896278"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pepelovehk/photos/a.121045449288142/156141989111821/"
        },
        {
            url: "https://www.facebook.com/pepelovehk/posts/183367789722574"
        }
    ];
    public final tags:Array<Tag> = [
        shop,
        media
    ];
}


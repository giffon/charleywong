package charleywong.entities;

class PrismaCoffeeCo implements Entity {
    public final id = "prismacoffeehk.tinhau";
    public final name = [
        en => "Prisma Coffee Co."
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/prismacoffeehk.tinhau/",
            meta: [
                "id" => "805217019545117",
                "about" => "Our vision is to redefine your unique coffee experience and build up a true coffee culture.\n\nInstagram: #prismacoffeehk",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "3A Watson Road",
                "area" => "Hong Kong",
                "email" => "info@thefinecup.com",
                "tel" => "34603725"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/prismacoffeehk.tinhau/posts/2594590143941120"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


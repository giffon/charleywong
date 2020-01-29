package charleywong.entities;

class MimohbySarah implements Entity {
    public final id = "mimohbysarah";
    public final name = [
        en => "Mimoh by Sarah"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mimohbysarah/",
            meta: [
                "about" => "Handmade earrings and accessories shipping to everywhere in the world! ♥ Instagram: @mimohbysarah",
                "categories" => [
                    "Jewellery/watches"
                ],
                "email" => "mimohbysarah@gmail.com",
                "id" => "176986119540356"
            ]
        },
        {
            url: "https://www.instagram.com/mimohbysarah/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mimohbysarah/photos/a.177975689441399/578065216099109/"
        }
    ];
    public final tags:Array<Tag> = [];
}


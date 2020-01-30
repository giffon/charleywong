package charleywong.entities;

class InvoltiniItaliancuisine implements Entity {
    public final id = "involtinihk";
    public final name = [
        en => "Involtini Italian cuisine"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.involtiniconcept.com"
        },
        {
            url: "https://www.facebook.com/involtinihk/",
            meta: [
                "id" => "1089706937725684",
                "about" =>
                "INVOLTINI has a good atmosphere which located in centre of CWB. There is a very good menu choice with \'light\' options available which fulfill all you need!",
                "categories" => [
                    "Italian restaurant",
                    "European restaurant"
                ],
                "addr" => "11F, The L. Square, 459-461 Lockhart Road, Causeway Bay, Hong Kong",
                "area" => "Causeway Bay",
                "email" => "involtini.concept@gmail.com",
                "tel" => "26582128"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/involtinihk/posts/2951545621541797"
        },
        {
            url: "https://www.facebook.com/involtinihk/posts/2753047431391618"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


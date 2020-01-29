package charleywong.entities;

class AMPERSANDandcoffee implements Entity {
    public final id = "ampersand.and.coffee";
    public final name = [
        en => "AMPERSAND.and.coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ampersand.and.coffee/",
            meta: [
                "id" => "557657481382602",
                "categories" => [
                    "Coffee shop",
                    "Local service"
                ],
                "addr" => "Shop 107, Port 33, 33 Tseuk Luk Street, San Po Kong",
                "area" => "Kowloon, Hong Kong",
                "email" => "ampersandcoffeehk@gmail.com",
                "tel" => "66067866"
            ]
        },
        {
            url: "https://www.instagram.com/ampersand.and.coffee/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ampersand.and.coffee/posts/816494342165580"
        },
        {
            url: "https://www.facebook.com/ampersand.and.coffee/posts/773600826454932"
        },
        {
            url: "https://www.facebook.com/ampersand.and.coffee/photos/a.557867891361561/768909046924110/"
        }
    ];
    public final tags:Array<Tag> = [];
}


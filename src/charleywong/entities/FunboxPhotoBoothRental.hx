package charleywong.entities;

class FunboxPhotoBoothRental implements Entity {
    public final id = "funboxplus";
    public final name = [
        en => "Funbox Photo Booth Rental"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.funboxplus.com"
        },
        {
            url: "https://www.facebook.com/funboxplus/",
            meta: [
                "id" => "159052177616976",
                "about" =>
                "Fun Concepts Limited provides photobooth and others entertainment service e.g. weddings,\ncorporate events , parties, and other events!",
                "categories" => [
                    "Event videographer",
                    "Event planner",
                    "Arts and entertainment"
                ],
                "email" => "info@funboxplus.com",
                "tel" => "68880825"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/funboxplus/photos/a.408565649332293/1249724558549727/"
        }
    ];
    public final tags:Array<Tag> = [];
}


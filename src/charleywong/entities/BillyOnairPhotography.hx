package charleywong.entities;

class BillyOnairPhotography implements Entity {
    public final id = "BillyOnairPhotography";
    public final name = [
        en => "Billy Onair Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.billyhung.com"
        },
        {
            url: "https://www.facebook.com/BillyOnairPhotography/",
            meta: [
                "id" => "179328095431325",
                "about" => "Wedding and Portrait Photographer in Hong Kong",
                "categories" => [
                    "Photographer"
                ],
                "email" => "info@billyhung.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BillyOnairPhotography/photos/a.194717777225690/2850286251668816/"
        }
    ];
}


package charleywong.entities;

class ThomasTPhotography implements Entity {
    public final id = "thomastsePhotography";
    public final name = [
        en => "Thomas T Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.flickr.com/photos/thomastphotography/sets"
        },
        {
            url: "https://www.facebook.com/thomastsePhotography/",
            meta: [
                "id" => "459223694178544",
                "about" => "Thomas T Photography\nPhotographer Thomas Tse is the Member of Asia Wedding Photographer Association.\n...\n\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Photographer"
                ],
                "email" => "thomastphotography@gmail.com",
                "tel" => "60964206"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thomastsePhotography/posts/2222450184522544"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}


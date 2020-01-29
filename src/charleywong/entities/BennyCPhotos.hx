package charleywong.entities;

class BennyCPhotos implements Entity {
    public final id = "BennyCphoto";
    public final name = [
        en => "Benny\'C Photos"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BennyCphoto/",
            meta: [
                "id" => "360921053925743",
                "about" => "Portrait & Wedding Photography / Video\nOverseas & Local Pre-Wedding\nFamily Portrait",
                "categories" => [
                    "Photographer"
                ],
                "email" => "bennycphotos@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BennyCphoto/posts/3213565568661263"
        },
        {
            url: "https://www.facebook.com/BennyCphoto/posts/3461762693841548"
        },
        {
            url: "https://www.facebook.com/BennyCphoto/photos/a.361210120563503/3213565325327954/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding,
    ];
}


package charleywong.entities;

class Lungo implements Entity {
    public final id = "Lungooo";
    public final name = [
        en => "Lungo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Lungooo/",
            meta: [
                "id" => "287360395484221",
                "about" => "Specialty Coffee and Bagels",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "B3B Proficient Industrial Centre, 6 wang kwun road",
                "area" => "Kowloon Bay, Hong Kong",
                "email" => "mylungocoffee@gmail.com",
                "tel" => "25813118"
            ]
        },
        {
            url: "https://www.instagram.com/lungo_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Lungooo/photos/a.300329920853935/397872454433014/"
        },
        {
            url: "https://www.facebook.com/Lungooo/posts/331315387755388"
        }
    ];
}


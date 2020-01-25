package charleywong.entities;

class BaseOneStudio implements Entity {
    public final id = "BASEONESTUDIO";
    public final name = [
        en => "Base One Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://leslovestudy.com"
        },
        {
            url: "https://www.facebook.com/BASEONESTUDIO/",
            meta: [
                "id" => "615077598658150",
                "about" => "We sell :\n•Big Day Shooting\n•Pre Wedding Shooting (local/overseas)\n•Maternity Shooting",
                "categories" => [
                    "Artist",
                    "Photographer",
                    "Media"
                ],
                "addr" => "RM 3&5, 6/F, Career and Kension Industrial Building, 58 Hung To Road",
                "area" => "Kwun Tong",
                "email" => "studiobaseone@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BASEONESTUDIO/photos/a.632662863566290/1436784659820769/"
        }
    ];
}


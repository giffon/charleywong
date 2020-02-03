package charleywong.entities;

class Maviskuku implements Entity {
    public final id = "maviskukuku";
    public final name = [
        en => "Maviskuku",
        zh => "雞蛋妹"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UCP7XhYDgUbvjvaHxIhjTd_g"
        },
        {
            url: "https://www.facebook.com/maviskukuku/",
            meta: [
                "id" => "102279814511412",
                "about" => "instagram : maviskuku",
                "categories" => [
                    "Blogger"
                ],
                "email" => "maviskukujb@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/maviskuku/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/maviskukuku/posts/144754656930594"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


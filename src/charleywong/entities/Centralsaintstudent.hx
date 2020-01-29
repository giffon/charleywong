package charleywong.entities;

class Centralsaintstudent implements Entity {
    public final id = "centralsaintstudent";
    public final name = [
        zh => "中央聖學子"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://centralsaintstudent.blogspot.hk"
        },
        {
            url: "https://www.facebook.com/centralsaintstudent/",
            meta: [
                "id" => "487071435569",
                "about" => "Full-time 燃點光明。 Part-time 咒詛黑暗。",
                "categories" => [
                    "Education website"
                ],
                "email" => "centralsaintstudent@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/centralsaintstudent/photos/a.10160163205870570/10162648556700570/"
        },
        {
            url: "https://www.facebook.com/centralsaintstudent/posts/10162423922515570"
        },
        {
            url: "https://www.facebook.com/centralsaintstudent/posts/10162453285325570"
        },
        {
            url: "https://www.facebook.com/centralsaintstudent/posts/10162391105055570"
        }
    ];
    public final tags:Array<Tag> = [];
}


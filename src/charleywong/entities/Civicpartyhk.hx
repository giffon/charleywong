package charleywong.entities;

class Civicpartyhk implements Entity {
    public final id = "civicpartyhk";
    public final name = [
        zh => "公民黨",
        en => "Civic Party"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.civicparty.hk"
        },
        {
            url: "https://www.facebook.com/civicpartyhk/",
            meta: [
                "id" => "107336743456",
                "about" => "公道自在民心\nThe Civic Way, the Fairer Way",
                "categories" => [
                    "Political party"
                ],
                "email" => "contact@civicparty.hk",
                "tel" => "28657111"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/civicpartyhk/posts/10156653450253457"
        },
        {
            url: "https://www.facebook.com/civicpartyhk/posts/10156624459853457"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}


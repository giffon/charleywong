package charleywong.entities;

class Mingtaideedee implements Entity {
    public final id = "mingtaideedee";
    public final name = [
        zh => "明泰"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mingtaideedee/",
            meta: [
                "categories" => [
                    "Personal blog"
                ],
                "id" => "1910695242353455"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mingtaideedee/posts/2463030567119917"
        },
        {
            url: "https://www.facebook.com/mingtaideedee/posts/2706711379418500"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


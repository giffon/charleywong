package charleywong.entities;

class WLOutdoorBlog implements Entity {
    public final id = "WLOutdoorBlog";
    public final name = [
        en => "Wing Leung\'s Outdoor Blog"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/WLOutdoorBlog/",
            meta: [
                "about" => "一天，有位韓國朋友問我為什麼自己不建一個專頁，於是我就去開了。自己喜歡行山，也喜歡拍攝，也喜歡香港，那就動動手。\ninstagram: http://www.instagram.com/chtwlaa/",
                "categories" => [
                    "Blogger"
                ],
                "id" => "1326663517350466"
            ]
        },
        {
            url: "https://www.instagram.com/chtwlaa/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WLOutdoorBlog/posts/2966402860043182"
        }
    ];
    public final tags:Array<Tag> = [];
}


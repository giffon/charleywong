package charleywong.entities;

class Thaihomelivingmart implements Entity {
    public final id = "thaihomelivingmart";
    public final name = [
        zh => "泰家生活百貨",
        en => "Thai Home Living Mart"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thaihomelivingmart/",
            meta: [
                "id" => "317050995305080",
                "about" => "泰家女孩",
                "categories" => [
                    "Health/beauty"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thaihomelivingmart/photos/a.358891741121005/1073457229664449/"
        },
        {
            url: "https://www.facebook.com/thaihomelivingmart/posts/1004232809920225"
        },
        {
            url: "https://www.facebook.com/thaihomelivingmart/posts/925132081163632"
        }
    ];
}


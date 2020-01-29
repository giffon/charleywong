package charleywong.entities;

class Lookforwardmarket implements Entity {
    public final id = "lookforward.market";
    public final name = [
        zh => "盼之雜貨攤"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lookforward.market/",
            meta: [
                "categories" => [
                    "Product/service"
                ],
                "id" => "1350804508307285"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lookforward.market/posts/2579969945390729"
        }
    ];
    public final tags:Array<Tag> = [];
}


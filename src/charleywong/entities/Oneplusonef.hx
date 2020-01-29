package charleywong.entities;

class Oneplusonef implements Entity {
    public final id = "oneplusonef";
    public final name = [
        en => "1+ 1handmade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oneplusonef/",
            meta: [
                "about" => "no matter how small you think it is. believe in good.",
                "categories" => [
                    "Product/service"
                ],
                "id" => "933310303521695"
            ]
        },
        {
            url: "https://www.instagram.com/1plus_1handmade/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oneplusonef/posts/1179353268917396"
        }
    ];
    public final tags:Array<Tag> = [];
}


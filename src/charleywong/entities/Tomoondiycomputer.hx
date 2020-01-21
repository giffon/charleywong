package charleywong.entities;

class Tomoondiycomputer implements Entity {
    public final id = "To.moondiycomputer";
    public final name = [
        zh => "顥魄砌機",
        en => "To.Moon DIY"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/To.moondiycomputer/",
            meta: [
                "about" => "提供專業砌機服務。",
                "categories" => [
                    "Computer company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/To.moondiycomputer/posts/2574574779437029"
        }
    ];
}


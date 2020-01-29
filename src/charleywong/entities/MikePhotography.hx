package charleywong.entities;

class MikePhotography implements Entity {
    public final id = "mikelawphotography";
    public final name = [
        en => "Mike Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mikelawphotography/",
            meta: [
                "id" => "258554440940893",
                "about" => "Less is More",
                "categories" => [
                    "Product/service",
                    "Photographer"
                ],
                "email" => "mmikelaw@gmail.com",
                "tel" => "61099681"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mikelawphotography/photos/a.312088392254164/2279913908804926/"
        }
    ];
    public final tags:Array<Tag> = [];
}


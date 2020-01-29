package charleywong.entities;

class Comingoutofdark implements Entity {
    public final id = "comingoutofdark";
    public final name = [
        zh => "常想一二"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/comingoutofdark/",
            meta: [
                "id" => "103793974338329",
                "about" => "人生不如意事十常八九。常想一二。不思八九。",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/comingoutofdark/posts/151362676248125"
        },
        {
            url: "https://www.facebook.com/comingoutofdark/posts/121561932561533"
        }
    ];
    public final tags:Array<Tag> = [];
}


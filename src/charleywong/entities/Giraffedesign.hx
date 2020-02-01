package charleywong.entities;

class Giraffedesign implements Entity {
    public final id = "Giraffe.design.group";
    public final name = [
        en => "Giraffe.design"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.giraffedesign-hk.com"
        },
        {
            url: "https://www.facebook.com/Giraffe.design.group/",
            meta: [
                "id" => "281764068623174",
                "about" => "We focus on\nCreative graphic design\nPrinting design\nMotion graphic, Animation\nInfographic etc.",
                "categories" => [
                    "Graphic designer"
                ],
                "email" => "la1819@yahoo.com.hk"
            ]
        },
        {
            url: "https://www.instagram.com/giraffe.design.group/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Giraffe.design.group/posts/1743315655801334"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


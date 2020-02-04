package charleywong.entities;

class Hkshiuyeukyuen implements Entity {
    public final id = "hkshiuyeukyuen";
    public final name = [
        zh => "蕭若元",
        en => "Shiu Yeuk Yuen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkshiuyeukyuen/",
            meta: [
                "id" => "142630289150126",
                "categories" => [
                    "Public figure"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkshiuyeukyuen/posts/2599404443472686"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


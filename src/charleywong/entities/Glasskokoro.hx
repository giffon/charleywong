package charleywong.entities;

class Glasskokoro implements Entity {
    public final id = "Glasskokoro";
    public final name = [
        zh => "玻璃心工作坊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Glasskokoro/",
            meta: [
                "id" => "502525933482872",
                "about" => "Galaxy glass 宇宙玻璃 工作室",
                "categories" => [
                    "Glass blower"
                ],
                "addr" => "新界葵涌大連排道182-190號金龍工業中心第四座24字樓A3室",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Glasskokoro/photos/a.516456838756448/789762061425923/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


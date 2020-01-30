package charleywong.entities;

class JasonTommyIllustration implements Entity {
    public final id = "jasontommy21";
    public final name = [
        zh => "小塗蛙",
        en => "JasonTommy Illustration"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jasontommy21/",
            meta: [
                "about" => "插畫 | 即場人像速繪 | 平面設計\n\nHong Kong-based Illustrator / Designer...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Artist",
                    "Design & fashion"
                ],
                "id" => "1431738923761812"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jasontommy21/posts/2527591644176529"
        },
        {
            url: "https://www.facebook.com/jasontommy21/photos/a.1431755290426842/2490749217860772/"
        },
        {
            url: "https://www.facebook.com/jasontommy21/photos/a.1431755290426842/2441165659485795/"
        },
        {
            url: "https://www.facebook.com/jasontommy21/posts/2429167397352288"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


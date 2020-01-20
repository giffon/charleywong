package charleywong.entities;

class Minoecanvas implements Entity {
    public final id = "minoe.canvas";
    public final name = [
        zh => "甘米撈撈",
        en => "Minoe Canvas"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/minoe.canvas/",
            meta: [
                "about" => "I\'m 撈。Any problem？撈 proboem！Okay thanks。",
                "categories" => [
                    "Public figure"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/minoe.canvas/posts/2800722313325484"
        },
        {
            url: "https://www.facebook.com/minoe.canvas/photos/a.705548906176179/2514943161903402/"
        }
    ];
}


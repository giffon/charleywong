package charleywong.entities;

class Mandytamheungman implements Entity {
    public final id = "mandytamheungman";
    public final name = [
        zh => "譚香文",
        en => "Mandy Tam"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mandytam.com"
        },
        {
            url: "https://www.facebook.com/mandytamheungman/",
            meta: [
                "id" => "888618414564428",
                "about" => "紮根九龍東 專業 實幹 從不動搖 !",
                "categories" => [
                    "Politician"
                ],
                "tel" => "23206020"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mandytamheungman/posts/2649972218429030"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


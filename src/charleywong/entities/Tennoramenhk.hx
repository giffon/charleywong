package charleywong.entities;

class Tennoramenhk implements Entity {
    public final id = "tennoramenhk";
    public final name = [
        en => "Tenno Ramen",
        zh => "拉麵天王"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tennoramenhk/",
            meta: [
                "id" => "246296932227529",
                "about" => "九龍紅磡德民街17-27號B5B地下 (德民大廈入口對面)\n\n\n【Follow us on Instagram】http://instagram.com/tennoramen\n(ID# tennoramen)",
                "categories" => [
                    "Ramen Restaurant"
                ],
                "addr" => "九龍紅磡德民街17至27號B5B地下",
                "area" => "Hung Hom",
                "tel" => "26270766"
            ]
        },
        {
            url: "https://www.instagram.com/tennoramen/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tennoramenhk/photos/a.247291592128063/1306540119536533/"
        },
        {
            url: "https://www.facebook.com/tennoramenhk/posts/1290319647825247"
        },
        {
            url: "https://www.facebook.com/tennoramenhk/photos/a.247291592128063/1248826368641242/"
        },
        {
            url: "https://www.facebook.com/tennoramenhk/photos/a.247291592128063/1268987463291799/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


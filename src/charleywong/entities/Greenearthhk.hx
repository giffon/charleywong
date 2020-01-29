package charleywong.entities;

class Greenearthhk implements Entity {
    public final id = "greenearthhk";
    public final name = [
        zh => "綠惜地球",
        en => "The Green Earth"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/greenearthhk/",
            meta: [
                "about" => "「綠惜地球」深信，大家可以成為綠色公民，共同發揮零浪費的綠色正能量。",
                "categories" => [
                    "Environmental conservation organisation",
                    "Non-profit organisation"
                ],
                "email" => "info@greenearth-hk.org",
                "tel" => "37088380",
                "id" => "250991628578095"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/greenearthhk/photos/a.251976585146266/1006263463050904/"
        }
    ];
    public final tags:Array<Tag> = [];
}


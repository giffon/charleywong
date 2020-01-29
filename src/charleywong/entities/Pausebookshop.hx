package charleywong.entities;

class Pausebookshop implements Entity {
    public final id = "pausebookshop";
    public final name = [
        zh => "小息書店",
        en => "PAUSE"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/pausebookshop/",
            meta: [
                "about" => "靜默有時，言語有時",
                "categories" => [
                    "Book shop"
                ],
                "addr" => "11/F.,Cheung Lee Commercial Building,No.137-143 Cheung Sha Wan Road,Kowloon",
                "area" => "Hong Kong",
                "email" => "pause@fes.org.hk",
                "tel" => "23692750",
                "id" => "296762637183676"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pausebookshop/photos/a.304447596415180/1160421424151122"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class PureLoungeMakeUp implements Entity {
    public final id = "pureloungehk";
    public final name = [
        en => "Pure Lounge Make Up"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/pureloungehk/",
            meta: [
                "id" => "562342547150527",
                "about" => "Nature . Simple . Nude . Elegant\n\n承諾一個美好的你、承諾一個獨特的你。...\n\n\n\nSee more",
                "categories" => [
                    "Beauty, cosmetic & personal care",
                    "Health/beauty"
                ],
                "email" => "pureloungehk@gmail.com",
                "tel" => "55065134"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pureloungehk/photos/a.562384050479710/2841581679226591/"
        }
    ];
    public final tags:Array<Tag> = [];
}


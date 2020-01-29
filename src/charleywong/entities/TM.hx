package charleywong.entities;

class TM implements Entity {
    public final id = "tingmikomakeup";
    public final name = [
        en => "T.M"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tingmikomakeup/",
            meta: [
                "id" => "119131174848621",
                "about" => "Pre-Wedding / Fashion Show / Magazine / Annual Dinner / Party - Beauty Makeup / Fx Makeup",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "ting_miko@hotmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tingmikomakeup/posts/2630277113734002"
        }
    ];
    public final tags:Array<Tag> = [];
}


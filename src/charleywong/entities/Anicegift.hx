package charleywong.entities;

class Anicegift implements Entity {
    public final id = "anicegift";
    public final name = [
        zh => "賞茶",
        en => "A Nice Gift"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/anicegift/",
            meta: [
                "id" => "884366288263001",
                "categories" => [
                    "Bubble tea shop",
                    "Tea room",
                    "Taiwanese restaurant"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/anicegift/photos/a.890146221018341/2864404613592482/"
        },
        {
            url: "https://www.facebook.com/anicegift/photos/a.890146221018341/2859180374114906/"
        },
        {
            url: "https://www.facebook.com/anicegift/photos/a.890146221018341/2658466537519625/"
        }
    ];
    public final tags:Array<Tag> = [];
}


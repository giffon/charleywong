package charleywong.entities;

class KKwong implements Entity {
    public final id = "DrKKwongChem";
    public final name = [
        en => "K Kwong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/DrKKwongChem/",
            meta: [
                "id" => "11383432157",
                "about" => "化學、天文、地理、電腦、行山、攝影",
                "categories" => [
                    "Public figure"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/DrKKwongChem/posts/10157659150282158"
        },
        {
            url: "https://www.facebook.com/DrKKwongChem/posts/10157731488032158"
        }
    ];
    public final tags:Array<Tag> = [];
}


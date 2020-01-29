package charleywong.entities;

class Fabricatorshk implements Entity {
    public final id = "fabricatorshk";
    public final name = [
        zh => "重光造作"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fabricatorshk/",
            meta: [
                "about" => "工具控說故事",
                "categories" => [
                    "Carpenter"
                ],
                "id" => "109714863839498"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fabricatorshk/photos/a.112783306865987/112783270199324/"
        }
    ];
    public final tags:Array<Tag> = [];
}


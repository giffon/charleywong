package charleywong.entities;

class PatrickChoPhotography implements Entity {
    public final id = "PatrickChoPhotography";
    public final name = [
        en => "Patrick Cho Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PatrickChoPhotography/",
            meta: [
                "id" => "1830139287275022",
                "about" => "攝影是生活、是思想的延伸，藉著光影訴說感受、承載被凝住的一剎那。攝影不一定跟美麗(beauty)有關，卻肯定跟美學(aesthetics)相連，美學在乎價值、意義、時代、直覺和感受。",
                "categories" => [
                    "Photographer"
                ],
                "email" => "patrickchophotography@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PatrickChoPhotography/posts/2470025486619729"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class ProjectR implements Entity {
    public final id = "ProjectRforHKY";
    public final name = [
        en => "Project R"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ProjectRforHKY/",
            meta: [
                "id" => "108411783950390",
                "about" => "旨在構建一個屬於全球香港人的社區及經濟共同體(Ecosystem) ，做到香港人靠香港人，拒絕經濟依賴。",
                "categories" => [
                    "Community",
                    "Graphic designer",
                    "Designer"
                ],
                "email" => "glocosystem@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ProjectRforHKY/posts/138982294226672"
        },
        {
            url: "https://www.facebook.com/ProjectRforHKY/photos/a.125633282228240/127063755418526/"
        }
    ];
    public final tags:Array<Tag> = [
        organization,
        shop
    ];
}


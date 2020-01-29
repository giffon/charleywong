package charleywong.entities;

class IXGrapher implements Entity {
    public final id = "IXGrapher";
    public final name = [
        zh => "玖號紀錄",
        en => "IX the Grapher"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/IXGrapher/",
            meta: [
                "id" => "356966884750792",
                "about" => "婚禮・藝術．活動\n攝影．錄影・紀錄\n...\n\n\n\nSee more",
                "categories" => [
                    "Photographer",
                    "Camera/photo",
                    "Event videographer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/IXGrapher/posts/774975592949917"
        }
    ];
    public final tags:Array<Tag> = [];
}


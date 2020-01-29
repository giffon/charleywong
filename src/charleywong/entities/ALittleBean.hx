package charleywong.entities;

class ALittleBean implements Entity {
    public final id = "alittlebean";
    public final name = [
        en => "A Little Bean"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/alittlebean/",
            meta: [
                "about" => "手工針織小物\n以設計兒童及親子產品為主，\n所有貼身產品均採用有機純棉製作，...\n\n\nSee more",
                "categories" => [
                    "Brand"
                ],
                "tel" => "61101281",
                "id" => "1169069126491446"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/alittlebean/photos/a.1178079275590431/2432279626837050/"
        },
        {
            url: "https://www.facebook.com/alittlebean/posts/2676215712443439"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


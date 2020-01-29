package charleywong.entities;

class ThatsChong implements Entity {
    public final id = "thatschongaccessories";
    public final name = [
        en => "That\'s Chong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thatschongaccessories/",
            meta: [
                "id" => "262052774274701",
                "categories" => [
                    "Jewellery/watches"
                ],
                "tel" => "67358196"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thatschongaccessories/posts/723637918116182"
        }
    ];
    public final tags:Array<Tag> = [];
}


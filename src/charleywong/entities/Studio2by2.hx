package charleywong.entities;

class Studio2by2 implements Entity {
    public final id = "studio2by2";
    public final name = [
        en => "Studio2by2"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/studio2by2/"
        },
        {
            url: "https://www.facebook.com/studio2by2/",
            meta: [
                "id" => "1065090183540483",
                "about" =>
                "- 以鮮花記錄你們的愛情故事 -\nWe dedicated to bring you one-of-a-kind floral styling for your wedding and your beloved one at any occasion. Based in Hong Kong.\nInstagram: @studio2by2\n✉️ Please inbox for enquiries.",
                "categories" => [
                    "Florist",
                    "Product/service"
                ],
                "email" => "studio2by2hk@gmail.com",
                "tel" => "98106536"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/studio2by2/photos/a.1170009269715240/2441999552516199/"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class PurpleDragonSnack implements Entity {
    public final id = "PurpleDragonSnack";
    public final name = [
        zh => "菓。紫龍"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PurpleDragonSnack/",
            meta: [
                "id" => "410123902806567",
                "about" => "五大訢求,缺一不可!\n光復香港,時代革命!",
                "categories" => [
                    "Product/Service"
                ],
                "email" => "lung0043@hotmail.com",
                "tel" => "91588608"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PurpleDragonSnack/photos/a.466708583814765/773366463148974/"
        },
        {
            url: "https://www.facebook.com/PurpleDragonSnack/photos/a.466708583814765/716320318853589/"
        }
    ];
}


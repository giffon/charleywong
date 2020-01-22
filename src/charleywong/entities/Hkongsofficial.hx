package charleywong.entities;

class Hkongsofficial implements Entity {
    public final id = "hkongsofficial";
    public final name = [
        zh => "光時"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://hkongs.com"
        },
        {
            url: "https://www.facebook.com/hkongsofficial/",
            meta: [
                "about" => "幫襯光時 支援義士",
                "categories" => [
                    "Shopping & retail",
                    "Grocers",
                    "Website"
                ],
                "email" => "info@hkongs.com",
                "id" => "107180774006127"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkongsofficial/posts/179085300149007"
        },
        {
            url: "https://www.facebook.com/hkongsofficial/photos/a.134369551287249/176146923776178/"
        }
    ];
}


package charleywong.entities;

class SumcoMakeup implements Entity {
    public final id = "sumcomakeup";
    public final name = [
        en => "Sumco Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sumcomakeup/",
            meta: [
                "id" => "273740682808163",
                "about" => "新娘化妝",
                "categories" => [
                    "Professional service"
                ],
                "email" => "fianceebridalmakeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sumcomakeup/photos/a.276053862576845/1281033808745507/"
        }
    ];
}


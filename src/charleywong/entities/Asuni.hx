package charleywong.entities;

class Asuni implements Entity {
    public final id = "asuni.style";
    public final name = [
        en => "Asuni"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://as-uni.com"
        },
        {
            url: "https://www.facebook.com/asuni.style/",
            meta: [
                "id" => "1790440354586092",
                "about" => "#asunistyle",
                "categories" => [
                    "Clothing (brand)"
                ],
                "email" => "hello@as-uni.com",
                "tel" => "61698863"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/asuni.style/posts/2109736929323098"
        }
    ];
    public final tags:Array<Tag> = [
        clothing
    ];
}


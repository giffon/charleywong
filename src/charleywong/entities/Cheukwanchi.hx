package charleywong.entities;

class Cheukwanchi implements Entity {
    public final id = "cheukwanchi";
    public final name = [
        zh => "卓韻芝"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cheukwanchi.co"
        },
        {
            url: "https://www.facebook.com/cheukwanchi/",
            meta: [
                "id" => "8051644882",
                "about" => "卓韻芝書籍購買",
                "categories" => [
                    "Public figure"
                ],
                "email" => "small.letter.g@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/cheukwanchi/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cheukwanchi/posts/10158147650144883"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure,
        artist
    ];
}


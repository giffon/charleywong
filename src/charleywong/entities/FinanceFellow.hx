package charleywong.entities;

class FinanceFellow implements Entity {
    public final id = "FinanceFellow";
    public final name = [
        zh => "華爾街狠人"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FinanceFellow/",
            meta: [
                "id" => "110776013598523",
                "about" => "光復香港，時代革命！生於亂世，做個狠狠的金融人",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FinanceFellow/posts/130616594947798"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


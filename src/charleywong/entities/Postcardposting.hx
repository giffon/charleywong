package charleywong.entities;

class Postcardposting implements Entity {
    public final id = "PostcardPosting";
    public final name = [
        en => "Postcard posting"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PostcardPosting/",
            meta: [
                "about" => "Postcard means more than just a card.\n•Share wordings •Postcards• Floral•Happiness•\n...\n\n\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PostcardPosting/photos/a.227252234045224/2118752871561808/"
        },
        {
            url: "https://www.facebook.com/PostcardPosting/photos/a.227252234045224/1992972404139856/"
        },
        {
            url: "https://www.facebook.com/PostcardPosting/posts/2067106903393072"
        }
    ];
}


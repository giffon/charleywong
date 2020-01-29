package charleywong.entities;

class Cheapbonbon implements Entity {
    public final id = "cheapbonbon";
    public final name = [
        en => "Cheapbonbon"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cheapbonbon.com"
        },
        {
            url: "https://www.facebook.com/cheapbonbon/",
            meta: [
                "id" => "355349891692408",
                "about" => "幫你搵全球最好既優惠\n助你成為全球最精明既消費者\n你的金錢我們也著緊...\n\n\n\nSee more",
                "categories" => [
                    "Electronics",
                    "Internet marketing service"
                ],
                "tel" => "57200777"
            ]
        },
        {
            url: "https://www.instagram.com/cheapbonbon/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cheapbonbon/posts/541757039718358"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class RachelChoiMakeupArtist implements Entity {
    public final id = "rachelchoimakeup";
    public final name = [
        en => "Rachel Choi Makeup Artist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://search.mua.com.hk/rachel-choi"
        },
        {
            url: "https://www.facebook.com/rachelchoimakeup/",
            meta: [
                "id" => "458118284220902",
                "about" => "Makeup Artist based in Hong Kong, available for all kind of makeup jobs including PRC, Macau and Overseas.",
                "categories" => [
                    "Makeup artist",
                    "Photography & videography"
                ],
                "email" => "rachelartmaison@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/rachelchoi_makeup/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rachelchoimakeup/photos/a.516408315058565/2806457232720317/"
        },
        {
            url: "https://www.facebook.com/rachelchoimakeup/photos/a.719611811404880/2928703020495737/"
        }
    ];
}


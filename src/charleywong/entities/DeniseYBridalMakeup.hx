package charleywong.entities;

class DeniseYBridalMakeup implements Entity {
    public final id = "deniseybridal";
    public final name = [
        en => "Denise.Y Bridal Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/deniseybridal/",
            meta: [
                "id" => "1686410724929756",
                "about" =>
                "We provide classy, clean and elegant bridal makeup & hair styling service\nContact No: +852 6169 0062\nEmail: deniybridal@gmail.com",
                "categories" => [
                    "Artist",
                    "Cosmetics shop",
                    "Makeup artist"
                ],
                "email" => "deniybridal@gmail.com",
                "tel" => "61690062"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/deniseybridal/posts/2473677912869696"
        },
        {
            url: "https://www.facebook.com/deniseybridal/posts/2394459057458249"
        }
    ];
}


package charleywong.entities;

class Discoverrealhongkong implements Entity {
    public final id = "discoverrealhongkong";
    public final name = [
        en => "Discover Real Hong Kong",
        zh => "真香港"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/discoverrealhongkong/",
            meta: [
                "id" => "112896270085707",
                "about" =>
                "We want people in the world to discover the real Hong Kong, we hope everyone can help spread the news and facts of what\'s happened and what\'s happening in Hong Kong, because Hong Kong no longer have the freedom of speech / press. Let our voice be heard.",
                "categories" => [
                    "Journalist",
                    "Newsstand",
                    "Magazine"
                ],
                "email" => "discoverrealhongkong@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/discoverrealhongkong/posts/150881772953823"
        }
    ];
}


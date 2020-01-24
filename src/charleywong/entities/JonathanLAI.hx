package charleywong.entities;

class JonathanLAI implements Entity {
    public final id = "jonathanlaibass";
    public final name = [
        en => "Jonathan LAI"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.jonathanlaibass.com"
        },
        {
            url: "https://www.facebook.com/jonathanlaibass/",
            meta: [
                "id" => "281702788829535",
                "about" => "Bassist |Bass Guitar Instructor |Music Lover",
                "categories" => [
                    "Music video",
                    "Musician/band"
                ],
                "email" => "jonathanlaibass@gmail.com",
                "tel" => "92021239"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jonathanlaibass/posts/1025142754485531"
        },
        {
            url: "https://www.facebook.com/jonathanlaibass/posts/939879123011895"
        },
        {
            url: "https://www.facebook.com/jonathanlaibass/posts/901389926860815"
        }
    ];
}


package charleywong.entities;

class OrannieCoinart implements Entity {
    public final id = "Orannie.Coinart";
    public final name = [
        zh => "橘川紅與猛與貓",
        en => "Orannie Cat n Coinart"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Orannie.Coinart/",
            meta: [
                "about" => "Coin art n metalwork since 2014",
                "categories" => [
                    "Arts and entertainment"
                ],
                "id" => "383921468412707"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Orannie.Coinart/posts/1515173818620794"
        },
        {
            url: "https://www.facebook.com/Orannie.Coinart/posts/1509702742501235"
        },
        {
            url: "https://www.facebook.com/Orannie.Coinart/photos/a.384882314983289/1496970033774506/"
        }
    ];
}


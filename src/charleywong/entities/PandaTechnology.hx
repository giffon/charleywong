package charleywong.entities;

class PandaTechnology implements Entity {
    public final id = "PandaTechHK";
    public final name = [
        en => "PandaTechnology"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://panda.computer"
        },
        {
            url: "https://www.facebook.com/PandaTechHK/",
            meta: [
                "about" =>
                "PandaTechnology is a shop locate at Sham Shui Po, we build PC for home use, office use and professional gaming over 5 years.\n熊貓電腦在深水埗高登開業超過五年, 以零售電腦零件周邊和組裝家用,商用及電競的電腦為主",
                "categories" => [
                    "Computers (brand)",
                    "Computer repair service",
                    "Computer company"
                ],
                "addr" => "深水埗福華街146-152號高登電腦商場1樓1號鋪",
                "area" => "Hong Kong",
                "email" => "pandatech108@gmail.com",
                "tel" => "97301820"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PandaTechHK/posts/2176031232692567"
        }
    ];
}


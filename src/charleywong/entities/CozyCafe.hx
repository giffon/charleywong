package charleywong.entities;

class CozyCafe implements Entity {
    public final id = "1475306752774774";
    public final name = [
        en => "Cozy Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/1475306752774774/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "No.5 , G/F, Po Sing Ctr. Ta Chuen Ping St,Kwai Chung",
                "area" => "Hong Kong",
                "email" => "cozychk@gmail.com",
                "tel" => "23522933",
                "id" => "1475306752774774"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/1475306752774774/photos/a.1485474038424712/2177458615892914/"
        },
        {
            url: "https://www.facebook.com/1475306752774774/photos/a.1485474038424712/2165402157098560/"
        },
        {
            url: "https://www.facebook.com/1475306752774774/photos/a.1485474038424712/2153942124911230/"
        }
    ];
}


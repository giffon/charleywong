package charleywong.entities;

class Coutou implements Entity {
    public final id = "coutou";
    public final name = [
        zh => "草途木研社",
        en => "Coutou Woodworking Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.coutou.space"
        },
        {
            url: "https://www.facebook.com/coutou/",
            meta: [
                "id" => "1482532171765961",
                "about" => "木匠與學生交流的地方，讓大家回到學習原點。",
                "categories" => [
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/coutou/photos/a.1541364332549411/2860896630596168/"
        },
        {
            url: "https://www.facebook.com/coutou/photos/a.1541364332549411/2786398458045986/"
        }
    ];
    public final tags:Array<Tag> = [];
}


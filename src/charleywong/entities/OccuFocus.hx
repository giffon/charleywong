package charleywong.entities;

class OccuFocus implements Entity {
    public final id = "OccuFocus";
    public final name = [
        zh => "職療同行",
        en => "OccuFocus"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/1942788249282602/",
            meta: [
                "about" => "我們是一班關心香港社會的職業治療師，我們希望藉此平台推動更好的社會環境，包括\n- 公平及公義的民主社會\n- 可持續的社會發展\n- 醫療政策的改革\n- 市民的身心靈發展",
                "categories" => [
                    "Community organisation"
                ],
                "email" => "occufocus@gmail.com",
                "id" => "1942788249282602"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=2557113774516710&id=1942788249282602"
        },
        {
            url: "https://www.facebook.com/1942788249282602/photos/a.2002149373346489/2467222416839180/"
        }
    ];
    public final tags:Array<Tag> = [
        medical,
        organization
    ];
}


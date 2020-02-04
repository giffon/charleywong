package charleywong.entities;

class ChocoChoco implements Entity {
    public final id = "chocoisfatbulous";
    public final name = [
        en => "Choco Choco"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.881903.com/Page/ZH-TW/Pro881_4812.aspx"
        },
        {
            url: "https://www.facebook.com/chocoisfatbulous/",
            meta: [
                "id" => "106501377361956",
                "about" => "減肥！減肥！減肥！\n《脫脂朱古力》\n商業電台 雷霆881 星期日 3-4點",
                "categories" => [
                    "Blogger"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chocoisfatbulous/posts/128554805156613"
        },
        {
            url: "https://www.facebook.com/chocoisfatbulous/posts/140295923982501"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


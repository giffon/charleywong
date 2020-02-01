package charleywong.entities;

class OFFtheWALLHK implements Entity {
    public final id = "OTWHK";
    public final name = [
        en => "OFF the WALL HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.otw852.com"
        },
        {
            url: "https://www.facebook.com/OTWHK/",
            meta: [
                "id" => "102098794536886",
                "about" => "當打著off the wall口號的品牌也不再off the wall.\n\n因此,OTWHK團隊想為抗爭運動推出一款屬於香港人的設計,並希望由本地設計出發,為2019光復香港運動眾籌,\n\n所有收益扣除開支成本會捐出星火.",
                "categories" => [
                    "Art",
                    "Retail company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/OTWHK/posts/136018311144934"
        }
    ];
    public final tags:Array<Tag> = [
        clothing
    ];
}


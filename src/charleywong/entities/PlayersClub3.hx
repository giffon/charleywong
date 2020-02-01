package charleywong.entities;

class PlayersClub3 implements Entity {
    public final id = "PlayersClub3";
    public final name = [
        en => "Players’ Club 3"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PlayersClub3/",
            meta: [
                "id" => "615819132222234",
                "about" => "專營PTCG、VG、BS及其他集玩式卡牌遊戲",
                "categories" => [
                    "Games/toys"
                ],
                "addr" => "葵芳葵豐街53號福業大廈12樓02室",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PlayersClub3/photos/a.616374565500024/766514233819389/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


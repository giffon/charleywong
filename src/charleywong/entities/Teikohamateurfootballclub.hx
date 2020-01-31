package charleywong.entities;

class Teikohamateurfootballclub implements Entity {
    public final id = "teikoh.amateur.football.club";
    public final name = [
        zh => "帝光足球會"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.yosoccer.hk/team.php?id=121"
        },
        {
            url: "https://www.facebook.com/teikoh.amateur.football.club/",
            meta: [
                "id" => "2097479280508360",
                "about" => "香港業餘足球隊，成立於2000年7月1日，於2000年開始參與各項業餘足球比賽",
                "categories" => [
                    "Amateur sports team",
                    "Non-profit organisation",
                    "Sports"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/teikoh.amateur.football.club/posts/2459747687614849"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}


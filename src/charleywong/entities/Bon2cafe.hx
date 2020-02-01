package charleywong.entities;

class Bon2cafe implements Entity {
    public final id = "bon2cafe";
    public final name = [
        zh => "車品品小食"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bon2cafe/",
            meta: [
                "id" => "178591438843606",
                "about" => "#車品品後座工坊 : 主要銷售自製食品； #事頭婆前座會客室 : 提供飲食及寵物關懷諮詢服務，歡迎光臨。\n每週按總營業額5%撥捐法定人道支援機構或獨立傳媒，詳見專頁更新，感謝支持｡",
                "categories" => [
                    "Food service distributor",
                    "Pet service",
                    "Food consultant"
                ],
                "addr" => "九龍大角咀櫸樹街45號其士工業大廈9字樓B室後座《需經由 9B室前座 \"Bon Bon Neverland事頭婆前座會客室\" 進入》�(近福全街即洪聖廟正正對面, 陳慶社區中心旁, 市政街市後面｡)",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bon2cafe/posts/2485329434836450"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


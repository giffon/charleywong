package charleywong.entities;

class CitybusLimitedEmployeesUnion implements Entity {
    public final id = "CitybusLimitedEmployeesUnion";
    public final name = [
        zh => "城巴有限公司職工會"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CitybusLimitedEmployeesUnion/",
            meta: [
                "id" => "115216791885118",
                "about" => "此專頁為城巴職工會(綠簿仔)管理，提供以下資料:\n- 會員資訊\n- 勞工權益...\n\n\nSee more",
                "categories" => [
                    "Community"
                ],
                "tel" => "27708668"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CitybusLimitedEmployeesUnion/photos/a.116178611788936/2895231793883590/"
        }
    ];
    public final tags:Array<Tag> = [
        transport,
        organization
    ];
}


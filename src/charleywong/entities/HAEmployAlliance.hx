package charleywong.entities;

class HAEmployAlliance implements Entity {
    public final id = "HA.EmployAlliance";
    public final name = [
        zh => "醫管局員工陣線",
        en => "HA Employees Alliance"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HA.EmployAlliance/",
            meta: [
                "id" => "107732697364538",
                "about" => "醫管局員工陣線致力於政治問題、HA內部問題、醫療系統問題主動發聲，幫助同業抵抗白色恐怖，爭取應有權益，誓與大家齊上齊落！請即加入我們，壯大力量！",
                "categories" => [
                    "Trade union"
                ],
                "email" => "ha.employeesalliance@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HA.EmployAlliance/posts/133219304815877"
        },
        {
            url: "https://www.facebook.com/HA.EmployAlliance/photos/a.115718553232619/134698184667989/"
        }
    ];
    public final tags:Array<Tag> = [];
}


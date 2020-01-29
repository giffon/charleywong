package charleywong.entities;

class Hmdeki implements Entity {
    public final id = "hm.deki";
    public final name = [
        zh => "隨 · 手作工坊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hm.deki/",
            meta: [
                "categories" => [
                    "Product/service"
                ],
                "email" => "hilaryhk000608@gmail.com",
                "id" => "451145208668473"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hm.deki/posts/828338894282434"
        },
        {
            url: "https://www.facebook.com/hm.deki/photos/a.457919004657760/679455132504145/"
        }
    ];
    public final tags:Array<Tag> = [];
}


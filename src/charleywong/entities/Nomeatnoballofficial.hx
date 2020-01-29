package charleywong.entities;

class Nomeatnoballofficial implements Entity {
    public final id = "nomeatnoballofficial";
    public final name = [
        zh => "毛肉毛球",
        en => "No meat No ball"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/nomeatnoballofficial/",
            meta: [
                "id" => "112833506768661",
                "about" => "我們宗旨是為小毛孩提供天然，無添加的小食，堅信不止人類，小毛孩也是You are what you eat. 我們同時每月亦有2天義賣，所有收益扣除成本後將捐款至本地毛孩救援機構。",
                "categories" => [
                    "Pet service"
                ],
                "email" => "nomeatnoball@gmail.com",
                "tel" => "64251346"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/nomeatnoballofficial/posts/159761558742522"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Actioncampinghk implements Entity {
    public final id = "actioncampinghk";
    public final name = [
        en => "Action Camping"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.actioncampinghk.com"
        },
        {
            url: "https://www.facebook.com/actioncampinghk/",
            meta: [
                "id" => "1661453187432587",
                "about" => "ACTION CAMPING 專營各種戶外及各種露營產品。",
                "categories" => [
                    "Outdoor equipment shop",
                    "Outdoor and sporting goods company"
                ],
                "addr" => "旺角西洋菜街1A-1K百寶利商業中心1606室",
                "area" => "Mong Kok",
                "email" => "camping.action@gmail.com",
                "tel" => "37065963"
            ]
        },
        {
            url: "https://www.instagram.com/actioncampinghk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/actioncampinghk/photos/a.1665228590388380/2544992112412019/"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Sushitahama implements Entity {
    public final id = "sushi.tahama";
    public final name = [
        zh => "立濱",
        en => "Sushi Tahama"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sushi.tahama/",
            meta: [
                "id" => "894770280860920",
                "about" => "立食壽司店\n\n地址: 尖沙咀宜昌街地下6B\n電話: 2958 1918",
                "categories" => [
                    "Sushi Restaurant"
                ],
                "addr" => "尖沙咀宜昌街地下6B",
                "area" => "Tsim Sha Tsui",
                "tel" => "29581918"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sushi.tahama/photos/a.894871334184148/1054438308227449/"
        },
        {
            url: "https://www.facebook.com/sushi.tahama/posts/1011772155827398"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


package charleywong.entities;

class Deeerforest implements Entity {
    public final id = "deeerforest";
    public final name = [
        zh => "小鹿文具所"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.deerforest.com.tw"
        },
        {
            url: "https://www.facebook.com/deeerforest/",
            meta: [
                "id" => "1438758342866986",
                "about" => "充滿文具與雜貨的療癒森林\n等待文具人、雜貨人來踏青",
                "categories" => [
                    "Shopping service",
                    "Cultural gift shop",
                    "Arts and entertainment"
                ],
                "addr" => "新民街50號",
                "area" => "Taoyuan District, Taoyuan",
                "email" => "deeerforest@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/deeerforest/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/deeerforest/posts/2646953705380771"
        }
    ];
    public final tags:Array<Tag> = [];
}


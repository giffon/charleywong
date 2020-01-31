package charleywong.entities;

class Wearesalarymen implements Entity {
    public final id = "wearesalarymen";
    public final name = [
        zh => "足字室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://medium.com/@salarymanlansbury"
        },
        {
            url: "https://www.facebook.com/wearesalarymen/",
            meta: [
                "id" => "1382440752062629",
                "about" => "三個打工仔球迷，同你一齊發掘球場內外小故事，分享原創改圖小遊戲，睇波之餘講下呢個世界發生乜事，就係我地嘅宗旨！",
                "categories" => [
                    "Recreation & sport website"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wearesalarymen/posts/1788314221475278"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


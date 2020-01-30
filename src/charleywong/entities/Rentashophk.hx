package charleywong.entities;

class Rentashophk implements Entity {
    public final id = "rentashop.hk";
    public final name = [
        zh => "租鋪"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hkrentastore.com/zh-TW"
        },
        {
            url: "https://www.facebook.com/rentashop.hk/",
            meta: [
                "id" => "103188294461268",
                "about" => "「和你宵」\n\n截止日期及時間：2020年1月1日...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Event"
                ],
                "email" => "x21studiohk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rentashop.hk/videos/591727308042012/"
        },
        {
            url: "https://www.facebook.com/rentashop.hk/posts/117754039671360"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


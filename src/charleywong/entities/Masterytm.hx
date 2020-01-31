package charleywong.entities;

class Masterytm implements Entity {
    public final id = "masterytm";
    public final name = [
        zh => "楊天命"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.master-ytm.com"
        },
        {
            url: "https://www.facebook.com/masterytm/",
            meta: [
                "id" => "1564444510532377",
                "categories" => [
                    "Writer"
                ],
                "email" => "fate@master-ytm.com",
                "tel" => "22956096"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/masterytm/photos/a.1577841449192683/2435283293448490/"
        },
        {
            url: "https://www.facebook.com/masterytm/photos/a.1577841449192683/2412978952345591/"
        },
        {
            url: "https://www.facebook.com/masterytm/posts/2373212906322196"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


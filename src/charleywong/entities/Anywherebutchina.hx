package charleywong.entities;

class Anywherebutchina implements Entity {
    public final id = "anywherebutchina";
    public final name = [
        zh => "黃色經濟戰隊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/anywherebutchina/",
            meta: [
                "id" => "105908227586754",
                "about" => "每星期更新一批 Made in China 以及 Anywhere But China 的產品。希望大家以後購物時先檢查一下來源地，避免中國製造。\n\nIG/TG @anywherebutchina",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/anywherebutchina/posts/122169842627259"
        },
        {
            url: "https://www.facebook.com/anywherebutchina/posts/116162439894666"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


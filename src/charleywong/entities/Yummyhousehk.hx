package charleywong.entities;

class Yummyhousehk implements Entity {
    public final id = "yummyhousehk";
    public final name = [
        zh => "美味棧",
        en => "Yummy House"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.yum.com.hk"
        },
        {
            url: "https://www.facebook.com/yummyhousehk/",
            meta: [
                "id" => "312550388949163",
                "about" => "美味棧 成立於2001年，是一間專門監製優質醬料及健康美食的國際性機構。",
                "categories" => [
                    "Food and drink"
                ],
                "email" => "info@yum.com.hk",
                "tel" => "28030833"
            ]
        },
        {
            url: "https://www.instagram.com/yummyhousehk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yummyhousehk/photos/a.465056123698588/1221388164732043/"
        },
        {
            url: "https://www.facebook.com/yummyhousehk/photos/a.672986732905525/1221210761416450/"
        },
        {
            url: "https://www.facebook.com/yummyhousehk/photos/a.672986732905525/1204435066427353/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


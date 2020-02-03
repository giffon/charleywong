package charleywong.entities;

class MadmanMonologue implements Entity {
    public final id = "MadmanMonologue";
    public final name = [
        zh => "廣告狂人",
        en => "Madman Monologue"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MadmanMonologue/",
            meta: [
                "id" => "653481138013826",
                "about" => "follow 廣告狂人instagram：\nhttp://instagram.com/madmanmonogram\njoin 廣告狂人情報交流telegram：\nhttps://t.me/madmangossip",
                "categories" => [
                    "Advertising/marketing"
                ],
                "email" => "madmanmonologue@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/madmanmonogram/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MadmanMonologue/posts/2798124566882795"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


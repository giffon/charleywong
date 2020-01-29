package charleywong.entities;

class Hongkongcemetery implements Entity {
    public final id = "hongkongcemetery";
    public final name = [
        zh => "墳場研究",
        en => "Cemetery Study"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hongkongcemetery/",
            meta: [
                "id" => "245578639338847",
                "about" => "本專頁會為大家介紹香港以及其他地方墳場、墓地、紀念碑、與死亡有關之事物等的歷史、文化及特色。\n\n歡迎所有對墳場、歷史、文化等方面有興趣的人like！",
                "categories" => [
                    "Society & culture website"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/hongkongcemetery/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hongkongcemetery/posts/545868809309827"
        }
    ];
    public final tags:Array<Tag> = [];
}


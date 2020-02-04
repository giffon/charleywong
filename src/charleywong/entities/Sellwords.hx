package charleywong.entities;

class Sellwords implements Entity {
    public final id = "sellwords";
    public final name = [
        zh => "賣字"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://sellwords.shoplineapp.com"
        },
        {
            url: "https://www.facebook.com/sellwords/",
            meta: [
                "id" => "485357988172807",
                "about" => "我們寫我們自己的浪漫，溫柔地說堅強的話。\nwe write our own romances, speaking the strength in soft.\n...\n\n\nSee more",
                "categories" => [
                    "Arts & humanities website"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sellwords/photos/a.486755661366373/3255095734532338/"
        },
        {
            url: "https://www.facebook.com/sellwords/posts/3217094644999114"
        },
        {
            url: "https://www.facebook.com/sellwords/posts/3008332162542031"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


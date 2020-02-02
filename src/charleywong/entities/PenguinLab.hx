package charleywong.entities;

class PenguinLab implements Entity {
    public final id = "thepenguinlab";
    public final name = [
        en => "Penguin Lab"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.penguinlab.net"
        },
        {
            url: "https://www.facebook.com/thepenguinlab/",
            meta: [
                "id" => "364191050297895",
                "about" => "Penguin Lab: 由江康泉與羅文樂，兩位熱愛動漫的創作人成立，製作只此一家的幽默風格，用笑改變生活！",
                "categories" => [
                    "Company"
                ],
                "email" => "lawmanlok@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thepenguinlab/posts/2509374262446219"
        },
        {
            url: "https://www.facebook.com/thepenguinlab/posts/2447287918654854"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


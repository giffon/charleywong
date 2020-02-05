package charleywong.entities;

class KillThatS implements Entity {
    public final id = "KillThatS";
    public final name = [
        zh => "辣殺"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/killthat_s/"
        },
        {
            url: "https://www.facebook.com/KillThatS/",
            meta: [
                "id" => "316736865687456",
                "about" => "| 全人手製作 | 秘製麻辣醬 |\n-就係要顛覆你食辣嘅習慣\n-就係鍾意食辣 ...\n\n\n\n\nSee more",
                "categories" => [
                    "Speciality food shop"
                ],
                "email" => "whynot.corp.2018@gmail.com",
                "tel" => "60190799"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KillThatS/photos/a.326762101351599/334312363929906/"
        },
        {
            url: "https://www.facebook.com/KillThatS/photos/a.326762101351599/457089158318892/"
        },
        {
            url: "https://www.facebook.com/KillThatS/photos/a.326762101351599/450370238990784/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


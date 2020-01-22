package charleywong.entities;

class PlayfulDesign implements Entity {
    public final id = "playfuldesignhk";
    public final name = [
        en => "Playful Design"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/playfuldesignhk/",
            meta: [
                "about" => "店內每件產品均以日本製風乾樹脂黏土、日本滴膠等製成，而所有產品由構思、設計、製造、包裝等均由店主自家包辦。店主希望客人品嚐美食時得到的滿足、幸福感延續下去。",
                "categories" => [
                    "Arts and crafts shop",
                    "Accessories",
                    "Games/toys"
                ],
                "email" => "playfuldesignhk@gmail.com",
                "tel" => "55078507",
                "id" => "1116419215040825"
            ]
        },
        {
            url: "https://www.instagram.com/playfuldesignhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/playfuldesignhk/posts/2839663169383079"
        }
    ];
}


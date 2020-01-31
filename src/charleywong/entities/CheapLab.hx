package charleywong.entities;

class CheapLab implements Entity {
    public final id = "CheapLab";
    public final name = [
        zh => "執笠倉"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CheapLab/",
            meta: [
                "id" => "719085368209277",
                "about" => "執笠倉•平到好似執笠咁！\n旗艦店：深水埗長沙灣道257-261號地下\n旺角店：通菜街150號地下...\n\n\nSee more",
                "categories" => [
                    "Shopping & retail"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CheapLab/posts/2481534725297657"
        },
        {
            url: "https://www.facebook.com/CheapLab/posts/2489142611203535"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


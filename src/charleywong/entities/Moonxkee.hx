package charleywong.entities;

class Moonxkee implements Entity {
    public final id = "moonxkee";
    public final name = [
        zh => "秋月兒"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.twitch.tv/yankeechan"
        },
        {
            url: "https://www.facebook.com/moonxkee/",
            meta: [
                "id" => "1671459459733389",
                "about" => "ゞＭメル゜品牌於2010年6月18日創立。\n專頁於2015年10月18日創立。\n\n主要於愛情小窩，第六大陸遊戲中販售各款精緻商品，情侶服裝，頭髮，表情，飾品，家具背景等。",
                "categories" => [
                    "Design & fashion"
                ],
                "email" => "moonxkee@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/moonxkee/posts/2554241808121812"
        }
    ];
    public final tags:Array<Tag> = [];
}


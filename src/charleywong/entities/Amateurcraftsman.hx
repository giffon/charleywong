package charleywong.entities;

class Amateurcraftsman implements Entity {
    public final id = "amateurcraftsman";
    public final name = [
        zh => "業餘手作組",
        en => "AmateurCraftsman"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/amateurcraftsman/",
            meta: [
                "about" => "閒人說：創作分享交流，一齊感受陶藝手作的樂趣。業餘手作組便成了。從此，每星期總有一個下晝或一個晚上聚首一堂搓搓捏捏拉陶泥。。。",
                "categories" => [
                    "Community group",
                    "Shopping & retail"
                ],
                "addr" => "香港灣仔軒尼詩道321號益華大廈閣樓掏陶工作室",
                "area" => "Hong Kong",
                "tel" => "98061179",
                "id" => "169872726481011"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/amateurcraftsman/photos/a.354850397983242/1706806656120936/"
        },
        {
            url: "https://www.facebook.com/amateurcraftsman/posts/1672280382906897"
        },
        {
            url: "https://www.facebook.com/amateurcraftsman/posts/1666681903466745"
        }
    ];
    public final tags:Array<Tag> = [];
}


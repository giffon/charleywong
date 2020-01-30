package charleywong.entities;

class Hikingshadow implements Entity {
    public final id = "hikingshadow";
    public final name = [
        zh => "山野倩映"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hikingshadow/",
            meta: [
                "about" => "<<山野倩映>> 成立於2010年7月1日始創！期望帶領更多人遊走香港各山野，留下最動人倩映之美好回憶。",
                "categories" => [
                    "Sport & recreation"
                ],
                "email" => "hiking.shadow@hotmail.com",
                "id" => "418391184954535"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hikingshadow/posts/2240773089382993"
        },
        {
            url: "https://www.facebook.com/hikingshadow/photos/a.452982054828781/2276914169102218/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


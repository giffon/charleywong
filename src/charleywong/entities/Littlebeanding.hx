package charleywong.entities;

class Littlebeanding implements Entity {
    public final id = "little.bean.ding";
    public final name = [
        zh => "小豆丁花園"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/little.bean.ding/",
            meta: [
                "id" => "1436957346612272",
                "about" => "有意領養小豆丁既家長們歡迎聯絡我地:)\n\n豁免持有動物售賣商牌照編號: IND-00015",
                "categories" => [
                    "Community organisation"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/little.bean.ding/posts/2190167924624540"
        },
        {
            url: "https://www.facebook.com/little.bean.ding/posts/2187403544900978"
        }
    ];
    public final tags:Array<Tag> = [
        organization,
        animal
    ];
}


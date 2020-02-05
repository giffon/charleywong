package charleywong.entities;

class LittleTansy implements Entity {
    public final id = "Little.Tansy";
    public final name = [
        en => "Little.Tansy",
        zh => "小艾菊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Little.Tansy/",
            meta: [
                "id" => "195178918094982",
                "about" => "售賣小手作 兩個小女孩小本經營 ��歡迎查詢\n艾菊花語. 和藹可親\n受到這個花語祝福而誕生的人�人緣很好�",
                "categories" => [
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Little.Tansy/photos/a.195388318074042/384429522503253/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


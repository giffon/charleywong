package charleywong.entities;

class Grandmamastore implements Entity {
    public final id = "grandmama.store";
    public final name = [
        zh => "婆婆雜貨店",
        en => "Grandmama Store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/grandmama.store/",
            meta: [
                "about" => "婆婆雜貨店\nC o l o r U p Y o u r L i f e �\n...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Shopping & retail",
                    "Community"
                ],
                "addr" => "觀塘駿業里8號",
                "area" => "Kowloon, Hong Kong",
                "email" => "grandmama.store@gmail.com",
                "tel" => "92616654",
                "id" => "397631327272964"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/grandmama.store/photos/a.416788022023961/1029556897413734/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


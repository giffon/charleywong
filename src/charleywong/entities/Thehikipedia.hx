package charleywong.entities;

class Thehikipedia implements Entity {
    public final id = "thehikipedia";
    public final name = [
        zh => "山上。山下",
        en => "Hikipedia"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thehikipedia/",
            meta: [
                "about" => "兩雙腿能走多遠？\n兩個女生，遊走山上山下\n尋幽探秘，一同上山下山...\n\n\n\n\nSee more",
                "categories" => [
                    "Health/beauty",
                    "Local & travel website",
                    "Sport team"
                ],
                "email" => "hikipedia.hk@gmail.com",
                "id" => "736461703177665"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thehikipedia/photos/a.853099928180508/1321882121302284/"
        }
    ];
    public final tags:Array<Tag> = [];
}


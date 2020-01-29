package charleywong.entities;

class Magichomeshop implements Entity {
    public final id = "magichomeshop";
    public final name = [
        en => "Magic home",
        zh => "魔術家"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.magichome.org"
        },
        {
            url: "https://www.facebook.com/magichomeshop/",
            meta: [
                "id" => "227981217230483",
                "about" => "專營魔術課程,表演及售賣",
                "categories" => [
                    "Magician",
                    "Art"
                ],
                "email" => "magichomeshop@gmail.com",
                "tel" => "61842424"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/magichomeshop/posts/2997231770305400"
        },
        {
            url: "https://www.facebook.com/magichomeshop/posts/2907866925908552"
        },
        {
            url: "https://www.facebook.com/magichomeshop/posts/2775376709157575"
        },
        {
            url: "https://www.facebook.com/magichomeshop/posts/2684682511560329"
        }
    ];
    public final tags:Array<Tag> = [];
}


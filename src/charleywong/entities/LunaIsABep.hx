package charleywong.entities;

class LunaIsABep implements Entity {
    public final id = "lunaisabep";
    public final name = [
        en => "Luna Is A Bep"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lunaisabep/",
            meta: [
                "about" => "HK Rapper\nThe Bep was a mistake and doesn\'t mean anything. Or it can be anything. (^.^)\n不要放着腦袋不管 ！",
                "categories" => [
                    "Musician"
                ],
                "email" => "lunaisabep@gmail.com",
                "id" => "137021420302454"
            ]
        },
        {
            url: "https://www.instagram.com/lulubepbep/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lunaisabep/posts/368893417115252"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}


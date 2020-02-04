package charleywong.entities;

class Hkybiz implements Entity {
    public final id = "hkybiz";
    public final name = [
        zh => "本土經濟戰"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkybiz.com"
        },
        {
            url: "https://www.facebook.com/hkybiz/",
            meta: [
                "id" => "103486837675195",
                "about" => "抗爭生活化，用Google Map 行多個街口，咁簡單你唔係唔做呀嘛？對唔對得啲用血用汗用前途用命換去抗爭嘅手足？",
                "categories" => [
                    "Product/service",
                    "Event planner"
                ],
                "email" => "hkybiz@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkybiz/posts/175431123814099"
        },
        {
            url: "https://www.facebook.com/hkybiz/posts/177249313632280"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


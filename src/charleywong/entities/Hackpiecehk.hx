package charleywong.entities;

class Hackpiecehk implements Entity {
    public final id = "hackpiecehk";
    public final name = [
        zh => "片刻"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hackpiecehk/",
            meta: [
                "about" => "Laser Cut Studio 鐳射切割工作室。",
                "categories" => [
                    "Arts and crafts shop",
                    "Product/service"
                ],
                "email" => "hackpiecehk@gmail.com",
                "tel" => "93273714",
                "id" => "1698990733746147"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hackpiecehk/photos/a.2051192878525929/2390569714588242/"
        },
        {
            url: "https://www.facebook.com/hackpiecehk/photos/a.1705581423087078/2335049130140301/"
        },
        {
            url: "https://www.facebook.com/hackpiecehk/posts/2268070020171546"
        },
        {
            url: "https://www.facebook.com/hackpiecehk/photos/a.1705581423087078/2219936014984947/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


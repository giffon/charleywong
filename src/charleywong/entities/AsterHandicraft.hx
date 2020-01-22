package charleywong.entities;

class AsterHandicraft implements Entity {
    public final id = "aster.handicraft.hk";
    public final name = [
        en => "Aster Handicraft"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/aster.handicraft.hk/",
            meta: [
                "about" => "Aster 是來自古希臘文中star，描述如星晨般的紫菀花\nAster Handicraft 的每一件產品都是店主親手縫製，\n猶如天上的繁星都是相似卻獨一無二...\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Shopping & retail"
                ],
                "email" => "asterhandicraft@gmail.com",
                "tel" => "51804369",
                "id" => "670585856711462"
            ]
        },
        {
            url: "https://www.instagram.com/aster.handicraft/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/aster.handicraft.hk/photos/a.691733427930038/859495821153797/"
        }
    ];
}


package charleywong.entities;

class Courbeginning implements Entity {
    public final id = "CourBeginning";
    public final name = [
        en => "Courbeginning"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.courbeginning.com"
        },
        {
            url: "https://www.facebook.com/CourBeginning/",
            meta: [
                "id" => "1539149646332566",
                "about" => "把國外的手作飾品帶到亞洲，讓喜歡造型獨特、時尚的女生們感受不一樣的美～\n\n目前品牌包括：...\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Jewellery & watches shop",
                    "Business service",
                    "Bridal shop"
                ],
                "addr" => "Unit F, 14/F, On Fook Industrial Building, 41 kwai fung cres",
                "area" => "Kwai Chung",
                "email" => "carol@courbeginning.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CourBeginning/photos/a.1562479103999620/2424099701170885/"
        },
        {
            url: "https://www.facebook.com/CourBeginning/posts/2427759330804922"
        }
    ];
    public final tags:Array<Tag> = [];
}


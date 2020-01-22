package charleywong.entities;

class PaulWongFineArtPhotography implements Entity {
    public final id = "paulwongfineart";
    public final name = [
        en => "Paul Wong Fine Art Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/paulwongfineart/",
            meta: [
                "about" => "Paul的攝影國度不限香港，多年來到超過世界20個城市為新人記錄幸福，深受新人們喜愛",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "Rm 310, Kowloon Plaza, 485 castle peak road, Laichikok",
                "area" => "Lai Chi Kok",
                "email" => "paulwong@everlastingphoto.hk",
                "tel" => "92949380",
                "id" => "1852243791700462"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/paulwongfineart/posts/2393600274231475"
        }
    ];
}


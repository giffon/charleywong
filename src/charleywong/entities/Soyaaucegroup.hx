package charleywong.entities;

class Soyaaucegroup implements Entity {
    public final id = "soyaaucegroup";
    public final name = [
        zh => "頭抽"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/soyaaucegroup/",
            meta: [
                "id" => "373402616351837",
                "about" => "頭抽是黃豆經發酵後，第一次提煉出來的豉油，所以味道最為香純濃郁。也由於每一甕發酵豉油只有一次提煉頭抽的機會，頭抽有先拔頭籌之意，也為祝褔禮物之一。",
                "categories" => [
                    "Event"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/soyaaucegroup/posts/960641140961312"
        }
    ];
    public final tags:Array<Tag> = [];
}


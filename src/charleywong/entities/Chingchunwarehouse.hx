package charleywong.entities;

class Chingchunwarehouse implements Entity {
    public final id = "chingchunwarehouse";
    public final name = [
        zh => "青春工藝",
        en => "chingchun warehouse"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chingchunwarehouse/",
            meta: [
                "id" => "1494886100788277",
                "about" => "用一雙手去尋找物料與生活之間的可能性",
                "categories" => [
                    "Art school"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chingchunwarehouse/posts/2507511179525759"
        }
    ];
}


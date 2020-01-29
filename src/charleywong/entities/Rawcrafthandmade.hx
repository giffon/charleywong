package charleywong.entities;

class Rawcrafthandmade implements Entity {
    public final id = "Rawcrafthandmade";
    public final name = [
        en => "Rawcraft handmade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Rawcrafthandmade/",
            meta: [
                "about" => "香港生產,高品質產品\n香港人品牌,支持香港人\n香港人加油,萬事小心",
                "categories" => [
                    "Product/service",
                    "Arts and crafts shop"
                ],
                "id" => "831425730321158"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Rawcrafthandmade/posts/1740585366071852"
        },
        {
            url: "https://www.facebook.com/Rawcrafthandmade/photos/a.940719782725085/1693126614151061/"
        }
    ];
    public final tags:Array<Tag> = [];
}


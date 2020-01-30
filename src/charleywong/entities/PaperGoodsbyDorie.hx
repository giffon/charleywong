package charleywong.entities;

class PaperGoodsbyDorie implements Entity {
    public final id = "PaperGoodsbyDorie";
    public final name = [
        en => "Paper Goods by Dorie"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PaperGoodsbyDorie/",
            meta: [
                "about" => "設計│插畫│紙品\n藉創作承傳印刷品與書信文化。\n查詢/合作: papergoodshk@gmail.com",
                "categories" => [
                    "Art"
                ],
                "email" => "papergoodshk@gmail.com",
                "id" => "384474821696120"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PaperGoodsbyDorie/photos/a.400938416716427/1741365082673747/"
        },
        {
            url: "https://www.facebook.com/PaperGoodsbyDorie/videos/2430158267267364/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


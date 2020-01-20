package charleywong.entities;

class Yeungdraw implements Entity {
    public final id = "yeungdraw";
    public final name = [
        zh => "啊羊繪記",
        en => "YeungDraw"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/yeungdraw/",
            meta: [
                "about" => "啊羊繪記香港本地藝術家及設計師品牌。\n喜歡即場畫人像與參加者互動。\n產品以手繪為主, 多富本地特色。\n例如茶餐廳、港產電影等。\n自己曾許下一個承諾, 永遠不要放棄夢想。",
                "categories" => [
                    "Artist"
                ],
                "email" => "yeungdraw@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/yeungdraw/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yeungdraw/posts/2646650675428845"
        },
        {
            url: "https://www.facebook.com/yeungdraw/photos/a.545584762202124/2624742087619704/"
        }
    ];
}


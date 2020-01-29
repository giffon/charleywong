package charleywong.entities;

class MavisMeiMakeup implements Entity {
    public final id = "mavismeimakeup";
    public final name = [
        en => "Mavis Mei Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mavismeimakeup/",
            meta: [
                "id" => "573791672701211",
                "about" => "創作靈感來源於歐美古典及韓式清新風格，將新娘化妝與時尚形象融合，並透過了解客人的個人風格及需要，為客人打造出莊重、自然耐看、又不失時尚感的專屬新娘造型。",
                "categories" => [
                    "Health/beauty",
                    "Women\'s clothes shop"
                ],
                "addr" => "長沙灣長裕街11號定豐中心6樓5室",
                "area" => "Hong Kong",
                "email" => "mavismeimakeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mavismeimakeup/posts/2581772065236485"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Kilungthai implements Entity {
    public final id = "kilungthai";
    public final name = [
        zh => "泰 基隆",
        en => "Thai Ki Lung"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kilungthai/",
            meta: [
                "id" => "1367427243296054",
                "about" => "正宗泰廚主理地道泰菜\n\n泰式串燒，即叫即燒",
                "categories" => [
                    "Thai restaurant",
                    "Family style restaurant",
                    "Asian fusion restaurant"
                ],
                "addr" => "基隆街241號地下",
                "area" => "Hong Kong",
                "tel" => "21101941"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kilungthai/posts/2772227569482674"
        },
        {
            url: "https://www.facebook.com/kilungthai/posts/2700816623290436"
        },
        {
            url: "https://www.facebook.com/kilungthai/posts/2755725771132854"
        }
    ];
}


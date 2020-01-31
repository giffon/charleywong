package charleywong.entities;

class Wahyeetangcakeshop implements Entity {
    public final id = "wahyeetangcakeshop";
    public final name = [
        zh => "華爾登餅店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wahyeetangcakeshop/",
            meta: [
                "id" => "392313650886580",
                "about" => "華爾登餅店已在西環區開業三十二年.由70年代開始至今.本店堅持所有產品全人手自制.不加任何防腐劑.\n由那些年的糖餅去到這些年的Icing Cookies.一一全心為你用心製作:)",
                "categories" => [
                    "Shopping & retail",
                    "Cupcake Shop",
                    "Wholesale bakery"
                ],
                "email" => "naomi.suen@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wahyeetangcakeshop/posts/2575285329256057"
        },
        {
            url: "https://www.facebook.com/wahyeetangcakeshop/posts/2444646078986650"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


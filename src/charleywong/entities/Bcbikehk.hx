package charleywong.entities;

class Bcbikehk implements Entity {
    public final id = "bcbikehk";
    public final name = [
        zh => "半澤單車"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://carousell.com/bc_bike"
        },
        {
            url: "https://www.facebook.com/bcbikehk/",
            meta: [
                "id" => "100362481399412",
                "about" => "半澤單車為你地提供一個簡單,數據化嘅購物經驗,等你輕易選擇想買乜!",
                "categories" => [
                    "Bicycle shop"
                ],
                "email" => "bcbikehk@gmail.com",
                "tel" => "95393082"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bcbikehk/posts/130135275088799"
        }
    ];
    public final tags:Array<Tag> = [];
}


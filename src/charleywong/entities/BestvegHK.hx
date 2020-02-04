package charleywong.entities;

class BestvegHK implements Entity {
    public final id = "bestvegHK";
    public final name = [
        zh => "合利公司"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bestvegHK/",
            meta: [
                "id" => "100273581399045",
                "about" => "合利生記 一直致力為大家提供精選優質蔬菜 歡迎大家來到門市購買，倘若食店向我們預訂產品 我們還提供送貨 材料預備 等所有服務 歡迎查詢",
                "categories" => [
                    "Food wholesaler"
                ],
                "addr" => "大角咀福全街63號市政大廈一樓 MN82 MN93號檔",
                "area" => "Kowloon, Hong Kong",
                "tel" => "91662489"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bestvegHK/photos/a.102352864524450/163016228458113/"
        },
        {
            url: "https://www.facebook.com/bestvegHK/posts/130371938389209"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


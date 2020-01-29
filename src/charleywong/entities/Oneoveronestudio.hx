package charleywong.entities;

class Oneoveronestudio implements Entity {
    public final id = "oneoveronestudio";
    public final name = [
        zh => "一分之一工作室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oneoveronestudio/",
            meta: [
                "id" => "544607029005011",
                "about" => "專營手帳、筆記本以及手帳週邊小物包含筆記用具、夾子、貼紙、紙膠帶等等",
                "categories" => [
                    "Arts and crafts shop",
                    "Arts and entertainment"
                ],
                "addr" => "愛國東路77號2樓",
                "area" => "Taipei, Taiwan"
            ]
        },
        {
            url: "https://www.instagram.com/oneoverone_studio_store/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oneoveronestudio/posts/1740694462729589"
        },
        {
            url: "https://www.facebook.com/oneoveronestudio/posts/1660662657399437"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class CATHandmadeStamp implements Entity {
    public final id = "cathandmadestamp";
    public final name = [
        en => "C.A.T Handmade Stamp"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cathandmadestamp/",
            meta: [
                "about" => "手刻印章 手刻生活微小點滴^",
                "categories" => [
                    "Grocers",
                    "Product/service"
                ],
                "id" => "598140120303983"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cathandmadestamp/photos/a.610472449070750/2555881091196533/"
        },
        {
            url: "https://www.facebook.com/cathandmadestamp/photos/a.610472449070750/2537650149686294/"
        }
    ];
    public final tags:Array<Tag> = [];
}


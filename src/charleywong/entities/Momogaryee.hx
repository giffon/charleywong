package charleywong.entities;

class Momogaryee implements Entity {
    public final id = "momogaryee";
    public final name = [
        zh => "毛毛聊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/momogaryee/",
            meta: [
                "about" => "我不是文青，我只是一個信息傳遞者。\nCingaryee@gmail.com\n工作室兼實體店：\n荔枝角麗昌工廠大廈202i室",
                "categories" => [
                    "Artist",
                    "Arts and crafts shop"
                ],
                "email" => "cingaryee@gmail.com",
                "id" => "1054095317936786"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/momogaryee/photos/a.1055007007845617/2796408147038819/"
        },
        {
            url: "https://www.facebook.com/momogaryee/posts/2789177947761839"
        },
        {
            url: "https://www.facebook.com/momogaryee/photos/a.1055475104465474/2782860175060283/"
        }
    ];
}


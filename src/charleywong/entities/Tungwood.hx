package charleywong.entities;

class Tungwood implements Entity {
    public final id = "tungwood";
    public final name = [
        zh => "木田東"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tungwood/",
            meta: [
                "about" => "不愛說私事，\n卻在網上赤裸裸地\n畫出身邊小事的小男孩。...\n\n\n\n\nSee more",
                "categories" => [
                    "Author",
                    "Personal blog"
                ],
                "email" => "tungwood11@gmail.com",
                "tel" => "68408216",
                "id" => "189442614528549"
            ]
        },
        {
            url: "https://www.instagram.com/tungwood/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tungwood/photos/a.191521107654033/1552848501521280/"
        }
    ];
}


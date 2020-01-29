package charleywong.entities;

class Humchuk implements Entity {
    public final id = "humchuk";
    public final name = [
        zh => "含蓄",
        en => "Humchuk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/humchuk/",
            meta: [
                "about" => "「含蓄」\n\n歡迎任何合作，私訊或電郵...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Artist"
                ],
                "email" => "rickykfluk@hotmail.com",
                "id" => "297450853746703"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/humchuk/posts/1404390243052753"
        },
        {
            url: "https://www.facebook.com/humchuk/photos/a.299998833491905/1397496800408764/"
        },
        {
            url: "https://www.facebook.com/humchuk/photos/a.299998833491905/1351062955052149/"
        },
        {
            url: "https://www.facebook.com/humchuk/photos/a.299998833491905/1327969167361528/"
        }
    ];
    public final tags:Array<Tag> = [];
}


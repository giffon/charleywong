package charleywong.entities;

class Momingart implements Entity {
    public final id = "moming.art";
    public final name = [
        zh => "無名插畫"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/moming.art/"
        },
        {
            url: "https://www.facebook.com/moming.art/",
            meta: [
                "id" => "334758243877370",
                "about" => "來自外星的生態記者\"無名\"，以插畫紀錄地球眾生相\n----------\n歡迎INBOX或電郵洽談平面設計及插畫合作...\n\n\n\nSee more",
                "categories" => [
                    "Art"
                ],
                "email" => "kirax2studio@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/moming.art/photos/a.334936917192836/421689135184280/"
        },
        {
            url: "https://www.facebook.com/moming.art/posts/409318546421339"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


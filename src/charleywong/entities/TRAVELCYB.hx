package charleywong.entities;

class TRAVELCYB implements Entity {
    public final id = "TRAVELCYB";
    public final name = [
        zh => "陳昕布之領隊日常"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/TRAVELCYB/",
            meta: [
                "id" => "853020604860031",
                "about" => "一個90後任性的雙子座小領隊\n喜歡畫畫和吃東西\n所以決定把她的領隊生活 美食攻略\n客人的好與壞全都畫出來",
                "categories" => [
                    "Just for fun"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TRAVELCYB/photos/a.853031951525563/1410161869145899/"
        },
        {
            url: "https://www.facebook.com/TRAVELCYB/photos/a.853031951525563/1401805026648250/"
        },
        {
            url: "https://www.facebook.com/TRAVELCYB/photos/a.853031951525563/1361398174022269/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


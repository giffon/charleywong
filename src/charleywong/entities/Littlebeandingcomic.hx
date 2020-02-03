package charleywong.entities;

class Littlebeandingcomic implements Entity {
    public final id = "little.bean.ding.comic";
    public final name = [
        zh => "小豆丁漫畫"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/little.bean.ding.comic/",
            meta: [
                "id" => "177912206086638",
                "about" => "兩個貓奴默默紀錄貓舍大小貓趣事\n每一隻流浪貓 都有一個屬於自己小故事\n...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Author"
                ],
                "email" => "littlemeowmeow101@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/little.bean.ding.comic/photos/a.190011731543352/594902764387578/"
        },
        {
            url: "https://www.facebook.com/little.bean.ding.comic/photos/a.189779258233266/548663792344809/"
        },
        {
            url: "https://www.facebook.com/little.bean.ding.comic/photos/a.190011731543352/469691036908752/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


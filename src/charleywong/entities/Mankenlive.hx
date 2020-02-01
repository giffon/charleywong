package charleywong.entities;

class Mankenlive implements Entity {
    public final id = "mankenlive";
    public final name = [
        zh => "活人拳法家"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://home.gamer.com.tw/homeindex.php?owner=uncleman"
        },
        {
            url: "https://www.facebook.com/mankenlive/",
            meta: [
                "id" => "823834717661829",
                "about" => "「原諒我這一生不羈放縱愛畫圖，也會怕有一天會截稿。」\n\n漫畫作品：《鐵拳無敵孫中山》、《拳師打殭屍》...\n\n\nSee more",
                "categories" => [
                    "Author"
                ],
                "email" => "imanjay11@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mankenlive/posts/3075353159176629"
        },
        {
            url: "https://www.facebook.com/mankenlive/posts/3058997314145547"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


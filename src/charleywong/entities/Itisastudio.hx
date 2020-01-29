package charleywong.entities;

class Itisastudio implements Entity {
    public final id = "itisastudio";
    public final name = [
        zh => "一間工作室",
        en => "A studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.astudio.tw"
        },
        {
            url: "https://www.facebook.com/itisastudio/",
            meta: [
                "id" => "308898870988",
                "about" => "婚禮攝影/兒童攝影/婚紗寫真/活動記錄\nhttp://www.astudio.tw/\n統一編號:31868110",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "台北市中正區中華路一段25-3號5樓",
                "area" => "Taipei, Taiwan",
                "email" => "it.is.jc@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/itisastudio/posts/10156290173005989"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Cwbcatstore implements Entity {
    public final id = "cwbcatstore";
    public final name = [
        zh => "阿貓地攤",
        en => "cat store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cwbcatstore/",
            meta: [
                "id" => "825572364129597",
                "about" => "Every Monday Off 逢星期一休息 Tuesday to Friday 12pm to 10pm星期二至星期五 中午12時至晚上10時Saturday, Sunday 11am to 10pm星期六，日 上午11時至晚上10時",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "銅鑼灣富明街2-6號寶明大廈3樓D室 3DE Po Ming Building, No 2 Foo Ming Street,",
                "area" => "Causeway Bay",
                "email" => "catisland2018@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cwbcatstore/photos/a.825583607461806/2479320738754743/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


package charleywong.entities;

class Naplabworkshop implements Entity {
    public final id = "naplabworkshop";
    public final name = [
        zh => "日抖工作室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://naplabworkshop.business.site"
        },
        {
            url: "https://www.facebook.com/naplabworkshop/",
            meta: [
                "id" => "1909761009288644",
                "about" => "《日抖工作室》位於灣仔星街附近，不定期舉辦迷你市集和Workshop, 記著留意啦！",
                "categories" => [
                    "Flea market"
                ],
                "addr" => "2F, 1 Wing Fung Street, Wan Chai",
                "area" => "Hong Kong",
                "email" => "naplabworkshop@gmail.com",
                "tel" => "93230380"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/naplabworkshop/posts/2462707610660645"
        }
    ];
}


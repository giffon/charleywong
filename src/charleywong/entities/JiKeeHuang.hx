package charleywong.entities;

class JiKeeHuang implements Entity {
    public final id = "JiKee.Huang";
    public final name = [
        zh => "集記五金機械行"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/JiKee.Huang/",
            meta: [
                "id" => "1343736479039990",
                "about" => "五金電動工具，來集記五金機械行幫到你",
                "categories" => [
                    "Local business"
                ],
                "addr" => "新填地街461B號地舖",
                "area" => "Hong Kong",
                "email" => "kennywong0625@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JiKee.Huang/posts/2521377847942508"
        }
    ];
    public final tags:Array<Tag> = [
        hardware
    ];
}


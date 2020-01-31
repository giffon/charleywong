package charleywong.entities;

class Thaihomebuddha implements Entity {
    public final id = "thaihome.buddha";
    public final name = [
        zh => "泰家",
        en => "Thai Home"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thaihome.buddha/",
            meta: [
                "id" => "115860231894540",
                "about" => "◇ 小乘佛教 ◇ 原廟供請 ◇ 保證師傅親自加持 ◇\n加持正品佛牌只會是用加持師傅的法力\n令配戴者感受到加持師傅的法力令事事順利",
                "categories" => [
                    "Local business"
                ],
                "addr" => "尖沙咀加拿芬道41-43號SOLO Building 306-307室",
                "area" => "Kowloon, Hong Kong",
                "email" => "info@thaihomehk.com",
                "tel" => "53635699"
            ]
        },
        {
            url: "https://www.instagram.com/thaihome.buddha/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thaihome.buddha/photos/a.694638480683376/1496258467188036/"
        },
        {
            url: "https://www.facebook.com/thaihome.buddha/posts/1398017443678806"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


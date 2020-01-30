package charleywong.entities;

class Mamasdumpling implements Entity {
    public final id = "mamasdumpling";
    public final name = [
        zh => "元朗有得餃"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://s.openrice.com/QrbS0vTi900~uzSoDAA"
        },
        {
            url: "https://www.facebook.com/mamasdumpling/",
            meta: [
                "id" => "138380349654695",
                "about" => "我們是元朗有得餃.\n類別 :港式小食/熟食店、餛飩/餃子",
                "categories" => [
                    "Chinese restaurant",
                    "Deli",
                    "Food stall"
                ],
                "addr" => "元朗建業街47 49號地舖",
                "area" => "Yuen Long",
                "tel" => "24493389"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mamasdumpling/photos/a.138557352970328/1421702127989171/"
        },
        {
            url: "https://www.facebook.com/mamasdumpling/posts/1400684630090921"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


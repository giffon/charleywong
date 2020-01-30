package charleywong.entities;

class LaLuz implements Entity {
    public final id = "laluz.hk";
    public final name = [
        en => "La Luz"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/laluz.hk/",
            meta: [
                "about" => "Australian Style Coffee Shop\nHomemade Bagels\nSignature Meuile-Feuille",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "文苑街28號地下B舖",
                "area" => "Hong Kong",
                "tel" => "95407087",
                "id" => "631818960343446"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/laluz.hk/posts/1219583921566944"
        },
        {
            url: "https://www.facebook.com/laluz.hk/photos/a.649072101951465/1089762891215715/"
        },
        {
            url: "https://www.facebook.com/laluz.hk/photos/a.632015283657147/1127456517446352/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


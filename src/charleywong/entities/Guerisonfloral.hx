package charleywong.entities;

class Guerisonfloral implements Entity {
    public final id = "guerisonfloral";
    public final name = [
        en => "Guérison Floral",
        zh => "花 。療"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/guerisonfloral/"
        },
        {
            url: "https://www.facebook.com/guerisonfloral/",
            meta: [
                "id" => "111439300227745",
                "about" => "🌿 Wedding & Event | Lecture & Tour | Décor & Design | All about Floral\n🌿 婚禮 | 空間佈置 | 研習課 遊學｜只關於花",
                "categories" => [
                    "Wedding planning service",
                    "Home & garden website"
                ],
                "email" => "guerisonfloral@gmail.com",
                "tel" => "61551814"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/guerisonfloral/posts/164307804940894"
        },
        {
            url: "https://www.facebook.com/guerisonfloral/photos/a.112715196766822/147029403335401/"
        },
        {
            url: "https://www.facebook.com/guerisonfloral/posts/151037319601276"
        }
    ];
    public final tags:Array<Tag> = [
        florist,
        wedding
    ];
}


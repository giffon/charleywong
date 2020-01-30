package charleywong.entities;

class Imcoxper implements Entity {
    public final id = "imcoxper";
    public final name = [
        zh => "抒銅"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/imcoxper/",
            meta: [
                "about" => "手予銅製是抒銅名字的由來，用雙手去締造不完美的銅製品。微妙而湊巧的獨特性能為你添上不一樣的生活品味。[美]能夠不修邊幅地延續下去，就是我們渴望的[原美]。",
                "categories" => [
                    "Brand",
                    "Arts and crafts shop"
                ],
                "addr" => "Ming Sang Industrial Building, 19 Hing Yip St,",
                "area" => "Kwun Tong",
                "email" => "info@imcoxper.com",
                "tel" => "97350102",
                "id" => "190166271582795"
            ]
        },
        {
            url: "https://www.instagram.com/imcoxper/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/imcoxper/posts/497139234218829"
        },
        {
            url: "https://www.facebook.com/imcoxper/posts/490042891595130"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


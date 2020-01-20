package charleywong.entities;

class SECRETCORNER implements Entity {
    public final id = "SECRETCORNER";
    public final name = [
        en => "SECRET CORNER"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/SECRETCORNER/",
            meta: [
                "about" => "SECRET CORNER\n:: AN EXPERIENCE TAKEN TO HEART ::\n從家居護理、個人護理、天然精油、健康食品，均以安心安全為理念。\n\n專門店:: 銅鑼灣 • 觀塘 • 將軍澳",
                "categories" => [
                    "Department store"
                ],
                "addr" => "禮頓道77號禮頓中心G07地舖",
                "area" => "Hong Kong",
                "tel" => "28811381"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SECRETCORNER/photos/a.10151698301326854/10156332582936854"
        }
    ];
}


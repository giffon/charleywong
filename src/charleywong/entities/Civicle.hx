package charleywong.entities;

class Civicle implements Entity {
    public final id = "Civicle";
    public final name = [
        zh => "思域高",
        en => "Civicle"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/100165398179519/",
            meta: [
                "about" => "提供網頁寄存及網頁設計，包括：公司網頁，企業管理系統，廣告或活動網頁等等。\n我們的理念：「做事憑良知」歡迎同路人查詢。\n\nCivicle, let your conscience be your guide.",
                "categories" => [
                    "Web designer",
                    "Software",
                    "Computer & Internet website"
                ],
                "addr" => "荃灣沙咀道57號荃運工業中心2期G座16樓05室",
                "area" => "Hong Kong",
                "email" => "info@civicle.com",
                "tel" => "84810388",
                "id" => "100165398179519"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/100165398179519/photos/a.100716551457737/115146590014733/"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=101993234663402&id=100165398179519"
        }
    ];
    public final tags:Array<Tag> = [
        technology,
        shop
    ];
}


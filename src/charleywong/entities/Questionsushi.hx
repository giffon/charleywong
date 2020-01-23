package charleywong.entities;

class Questionsushi implements Entity {
    public final id = "question.sushi";
    public final name = [
        zh => "問卷（手卷專門店）"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/question.sushi/",
            meta: [
                "id" => "978779035527269",
                "about" => "即叫即做，保證新鮮，款式繁多，不定期轉換醬汁，可嘗試不同味道配搭",
                "categories" => [
                    "Sushi Restaurant"
                ],
                "addr" => "葵涌廣場地下A48b鋪",
                "area" => "Hong Kong",
                "tel" => "60277838"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/question.sushi/posts/3214128325325651"
        },
        {
            url: "https://www.facebook.com/question.sushi/posts/3220380228033794"
        }
    ];
}


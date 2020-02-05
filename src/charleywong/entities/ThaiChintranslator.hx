package charleywong.entities;

class ThaiChintranslator implements Entity {
    public final id = "ThaiChintranslator";
    public final name = [
        zh => "泰譯聞"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.books.com.tw/products/0010817914"
        },
        {
            url: "https://www.facebook.com/ThaiChintranslator/",
            meta: [
                "id" => "106828960695311",
                "about" => "在書市出過幾本泰文翻譯作品的泰文譯者。有空的時候會在這裡分享一些泰文文章的翻譯，主要跟藝文有關，吧，但可能看到有趣的都會翻一下。譯案諮詢敬請私訊。",
                "categories" => [
                    "Translator",
                    "Book"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ThaiChintranslator/posts/144708916907315"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


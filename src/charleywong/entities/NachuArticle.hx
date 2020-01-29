package charleywong.entities;

class NachuArticle implements Entity {
    public final id = "NachuArticle";
    public final name = [
        zh => "津津樂文"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/NachuArticle/",
            meta: [
                "id" => "107439940598167",
                "about" => "文字為時代作了最好的見證",
                "categories" => [
                    "Writer"
                ],
                "email" => "nachumisiun@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/NachuArticle/posts/147865689888925"
        }
    ];
    public final tags:Array<Tag> = [];
}


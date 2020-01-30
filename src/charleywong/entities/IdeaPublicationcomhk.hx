package charleywong.entities;

class IdeaPublicationcomhk implements Entity {
    public final id = "IdeaPublication.com.hk";
    public final name = [
        zh => "點子出版",
        en => "Idea Publication"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/IdeaPublication.com.hk/",
            meta: [
                "about" => "點子出版為香港本地出版社，致力打造多元化高質流行讀物。\n暢銷作品包括《Deep Web File #網絡奇談》《診所低能奇觀》《天黑莫回頭》《壹獄壹世界》等等。",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "info@idea-publication.com",
                "tel" => "23898311",
                "id" => "342117395918437"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/IdeaPublication.com.hk/photos/a.347278592068984/1819480784848750"
        }
    ];
    public final tags:Array<Tag> = [
        book
    ];
}


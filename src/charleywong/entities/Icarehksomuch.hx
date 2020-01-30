package charleywong.entities;

class Icarehksomuch implements Entity {
    public final id = "icarehksomuch";
    public final name = [
        zh => "亂世凡人"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/icarehksomuch/",
            meta: [
                "id" => "105661674297451",
                "about" => "此專頁的文宣可以任意印刷、轉載，但禁止未授權的商業用途。若要取得授權，請私信討論。",
                "categories" => [
                    "Author",
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/icarehksomuch/posts/106233260906959"
        },
        {
            url: "https://www.facebook.com/icarehksomuch/posts/106222844241334"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        artist
    ];
}


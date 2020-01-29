package charleywong.entities;

class HistoryinDRAMA implements Entity {
    public final id = "HistoryinDRAMA";
    public final name = [
        zh => "煲劇學歷史",
        en => "History in Drama"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://historyindrama.wixsite.com/home"
        },
        {
            url: "https://www.facebook.com/HistoryinDRAMA/",
            meta: [
                "id" => "1184275761642354",
                "about" => "兩個90後女生對歷史的熱愛，是從電視走到課堂，再從課堂走回電視之中。希望在這裡，能凝聚同樣喜愛古裝片的你們，一同分享當中的歷史趣聞！",
                "categories" => [
                    "Arts & humanities website"
                ],
                "email" => "historyindrama@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/historyindrama/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HistoryinDRAMA/posts/3117207491682495"
        }
    ];
    public final tags:Array<Tag> = [];
}


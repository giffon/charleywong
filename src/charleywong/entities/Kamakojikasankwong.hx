package charleywong.entities;

class Kamakojikasankwong implements Entity {
    public final id = "kamakoji.kasankwong";
    public final name = [
        zh => "カマコジ（卡媽歌紙）"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://kasan1007.wixsite.com/website"
        },
        {
            url: "https://www.facebook.com/kamakoji.kasankwong/",
            meta: [
                "id" => "489809927855365",
                "about" => "提供不同插畫及平面設計服務，包括書刊、雜誌、書籍、卡片、明信片、海報、教學用品..等等。\n*詳情可以 inbox 卡媽歌紙",
                "categories" => [
                    "Arts and entertainment",
                    "Product/service",
                    "Book"
                ],
                "email" => "kamakoji1007@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/kamakoji_kasan/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kamakoji.kasankwong/photos/a.489973254505699/1374705526032463/"
        },
        {
            url: "https://www.facebook.com/kamakoji.kasankwong/photos/a.489973254505699/1372698826233133/"
        },
        {
            url: "https://www.facebook.com/kamakoji.kasankwong/photos/a.489973254505699/1295243277312022/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


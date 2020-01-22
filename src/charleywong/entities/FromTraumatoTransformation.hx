package charleywong.entities;

class FromTraumatoTransformation implements Entity {
    public final id = "FromTrauma2Transformation";
    public final name = [
        zh => "創傷同學會",
        en => "From Trauma to Transformation"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FromTrauma2Transformation/",
            meta: [
                "about" => "2019年的夏天，香港人經歷了一場前所未有的社會創傷。一班非暴力溝通及敍事治療的實踐者成立了T2T工作室，設計了三個線上實驗課程，處理三個今天香港人真實的困境。",
                "categories" => [
                    "Education"
                ],
                "email" => "t2tproject.contactus@gmail.com",
                "id" => "112022836891097"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FromTrauma2Transformation/photos/a.121665555926825/134296284663752/"
        },
        {
            url: "https://www.facebook.com/FromTrauma2Transformation/videos/669571996905852/"
        },
        {
            url: "https://www.facebook.com/FromTrauma2Transformation/videos/752330631903428/"
        }
    ];
}


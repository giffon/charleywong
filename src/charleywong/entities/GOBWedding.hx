package charleywong.entities;

class GOBWedding implements Entity {
    public final id = "GobMakeup";
    public final name = [
        en => "GO.B Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/GobMakeup/",
            meta: [
                "id" => "484824198242379",
                "about" => "主張減齡妝容，為女孩子散發甜美氣質�\n多年化妝經驗，提供時下流行專業新娘/姊妹/宴會化妝造型服務！如有任何查詢歡迎inbox\n...\n\n\nSee more",
                "categories" => [
                    "Makeup artist"
                ],
                "addr" => "�Workshop address: 新蒲崗五芳街31-33號 永顯工廠大廈13樓 C座10室 上到13樓",
                "area" => "Hong Kong",
                "email" => "go.bwedding@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GobMakeup/posts/2681487038576073"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}


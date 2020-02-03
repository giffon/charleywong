package charleywong.entities;

class Ericlaicomics implements Entity {
    public final id = "ericlaicomics";
    public final name = [
        zh => "泥水畫集x快see漫賞"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ericlaicomics/",
            meta: [
                "id" => "408006082641298",
                "about" => "最新作品\"泥水畫集\"同\"煮飯仔烹飪漫畫\"已經上載，請多多支持！\n畫漫畫，呢個係我嘅興趣同夢想！希望支持創作嘅朋友，可以分享我嘅漫畫專頁，或給我一個Like作鼓勵！感謝大家！",
                "categories" => [
                    "Interest"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ericlaicomics/photos/a.572021229573115/2193033034138585/"
        },
        {
            url: "https://www.facebook.com/ericlaicomics/photos/a.572021229573115/2112634712178418/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


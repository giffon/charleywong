package charleywong.entities;

class LeoLeoWorld implements Entity {
    public final id = "LeoLeoWorld";
    public final name = [
        zh => "里奧利奧夢想行"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LeoLeoWorld/",
            meta: [
                "id" => "449797938515492",
                "about" => "里奧利奧希望籍此專頁記錄闖蕩經歷，分享所見所聞，交流所思所想，希望和大家互相支持，互相鼓勵，一起成長，輸出快樂，創出各自的一片天。",
                "categories" => [
                    "Blogger"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LeoLeoWorld/posts/1489644367864172"
        },
        {
            url: "https://www.facebook.com/LeoLeoWorld/posts/1427977397364203"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


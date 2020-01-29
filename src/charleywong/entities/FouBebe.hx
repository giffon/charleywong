package charleywong.entities;

class FouBebe implements Entity {
    public final id = "Foubebe";
    public final name = [
        en => "FouBebe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Foubebe/",
            meta: [
                "about" => "《屎屎肥豬》是90後的香港情侶，以七彩繽紛的畫風，分享情侶日常趣事。大部分描繪不同種類的情侶，各自有著各種的甜蜜和事情，也有的繪畫閨蜜之間的感情事。希望你們會喜歡看吧！Muah~",
                "categories" => [
                    "Author"
                ],
                "id" => "533903046777539"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Foubebe/photos/a.540059392828571/1385260554975113/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


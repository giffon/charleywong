package charleywong.entities;

class SyzygyOutdoorGear implements Entity {
    public final id = "syzygyoutdoorgear";
    public final name = [
        en => "Syzygy Outdoor Gear"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/syzygyoutdoorgear/",
            meta: [
                "about" => "Syzygy Outdoor Gear由一班香港設計師於2015年創立，主力打造smart outdoor outfit，希望將科技融入生活。",
                "categories" => [
                    "Outdoor equipment shop",
                    "Product/service"
                ],
                "email" => "syzygyoutdoorgear@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/syzygyoutdoorgear/photos/a.520470221470734/1185101078340975/"
        },
        {
            url: "https://www.facebook.com/syzygyoutdoorgear/posts/1173927296125020"
        },
        {
            url: "https://www.facebook.com/syzygyoutdoorgear/photos/a.520470221470734/1167641880086895/"
        },
        {
            url: "https://www.facebook.com/syzygyoutdoorgear/posts/1151735231677560"
        }
    ];
}


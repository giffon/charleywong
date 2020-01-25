package charleywong.entities;

class XYZstore implements Entity {
    public final id = "XYZstorehk";
    public final name = [
        en => "XYZ_store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/xyz_store/"
        },
        {
            url: "https://www.facebook.com/XYZstorehk/",
            meta: [
                "id" => "1324255454257853",
                "about" => "\"A Special Gift For A Special YOU\"\n自設工作室, 訂製專屬您的小禮物\n歡迎 INBOX 查詢...\n\n\nSee more",
                "categories" => [
                    "Product/service"
                ],
                "email" => "xyzstore.contact@gmail.com",
                "tel" => "55338745"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/XYZstorehk/posts/3122090717807642"
        }
    ];
}


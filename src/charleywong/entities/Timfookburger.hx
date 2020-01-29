package charleywong.entities;

class Timfookburger implements Entity {
    public final id = "timfookburger";
    public final name = [
        zh => "添福小食"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.openrice.com/zh/hongkong/r-%E6%B7%BB%E7%A6%8F%E5%B0%8F%E9%A3%9F-%E6%B7%B1%E6%B0%B4%E5%9F%97-%E6%B8%AF%E5%BC%8F-%E6%BC%A2%E5%A0%A1%E5%8C%85-r452956"
        },
        {
            url: "https://www.facebook.com/timfookburger/",
            meta: [
                "id" => "838899286156738",
                "categories" => [
                    "Fast food restaurant",
                    "Diner",
                    "Food stall"
                ],
                "addr" => "九龍長沙灣道80-82號文海樓地下A1鋪",
                "area" => "Hong Kong",
                "email" => "mabli12@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/timfookburger/photos/a.2177306562315997/2714407598605888/"
        },
        {
            url: "https://www.facebook.com/timfookburger/posts/2687765504603431"
        }
    ];
    public final tags:Array<Tag> = [];
}


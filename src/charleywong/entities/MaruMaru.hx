package charleywong.entities;

class MaruMaru implements Entity {
    public final id = "MaruMaru.hk";
    public final name = [
        en => "Maru Maru"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MaruMaru.hk/",
            meta: [
                "about" => "文具雜貨店\n\n紙膠帶，印章，手帳...\n\n\nSee more",
                "categories" => [
                    "Gift shop"
                ],
                "id" => "486752131395357"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MaruMaru.hk/photos/a.507683215968915/3221031111300765"
        }
    ];
}


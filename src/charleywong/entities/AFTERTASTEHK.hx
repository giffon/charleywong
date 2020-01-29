package charleywong.entities;

class AFTERTASTEHK implements Entity {
    public final id = "aftertastehongkong";
    public final name = [
        en => "AFTER_TASTE.HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/aftertastehongkong/",
            meta: [
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "西營盤西邊街21號",
                "area" => "Hong Kong",
                "email" => "aftertaste168@gmail.com",
                "id" => "2108290669239508"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/aftertastehongkong/photos/a.2120650028003572/2539566709445233/"
        },
        {
            url: "https://www.facebook.com/aftertastehongkong/photos/a.2120650028003572/2402566846478554/"
        },
        {
            url: "https://www.facebook.com/aftertastehongkong/photos/a.2120650028003572/2346422798759626/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


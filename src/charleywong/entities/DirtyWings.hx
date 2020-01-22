package charleywong.entities;

class DirtyWings implements Entity {
    public final id = "dirtywingscrafts";
    public final name = [
        en => "Dirty Wings"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dirtywingscrafts/",
            meta: [
                "about" => "透過羊毛氈的可塑性製作出不同類型的產品，利用羊毛來呈現出各種質感，希望以各作品的樣貌、型態，為客人帶來溫暖、歡樂及親切感。",
                "categories" => [
                    "Product/service",
                    "Arts and crafts shop",
                    "Pet supplies"
                ],
                "email" => "dirtywingscrafts@gmail.com",
                "id" => "198901310478709"
            ]
        },
        {
            url: "https://www.instagram.com/dirtywingscrafts/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dirtywingscrafts/photos/a.199668953735278/974667229568776/"
        },
        {
            url: "https://www.facebook.com/dirtywingscrafts/photos/a.199668953735278/972590366443129/"
        },
        {
            url: "https://www.facebook.com/dirtywingscrafts/posts/944814885887344"
        }
    ];
}


package charleywong.entities;

class SubmarineVintage implements Entity {
    public final id = "submarine.vintage";
    public final name = [
        en => "Submarine Vintage"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/submarine.vintage/",
            meta: [
                "about" => "The Place for all Vintage Lovers.\n喜歡復古 喜歡自己 喜歡鯨 喜歡船 喜歡這裡",
                "categories" => [
                    "Clothing (brand)"
                ],
                "email" => "oh.submarine.vintage@gmail.com",
                "id" => "312320602243504"
            ]
        },
        {
            url: "https://www.instagram.com/submarine_vintage/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/submarine.vintage/posts/1529561380519414"
        },
        {
            url: "https://www.facebook.com/submarine.vintage/posts/1479801968828689"
        },
        {
            url: "https://www.facebook.com/submarine.vintage/photos/a.339886976153533/1494600270682192/"
        }
    ];
    public final tags:Array<Tag> = [];
}


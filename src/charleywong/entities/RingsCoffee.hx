package charleywong.entities;

class RingsCoffee implements Entity {
    public final id = "ringscoffee";
    public final name = [
        en => "Rings Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ringscoffee/",
            meta: [
                "id" => "166381593952894",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "G/F, No.8 ,Nga Tsin Long Road, Kowloon City",
                "area" => "Kowloon, Hong Kong",
                "email" => "ringscoffee@gmail.com",
                "tel" => "97983510"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ringscoffee/photos/a.184638872127166/513178055939911/"
        },
        {
            url: "https://www.facebook.com/ringscoffee/posts/504546103469773"
        }
    ];
    public final tags:Array<Tag> = [];
}


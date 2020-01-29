package charleywong.entities;

class WoodSoda implements Entity {
    public final id = "woodsoda";
    public final name = [
        en => "Wood Soda"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/woodsoda/",
            meta: [
                "about" => "有人喜歡用攝影記錄，而我更喜歡把美好留在筆下\nHandmade | Made in Hong Kong\n...\n\n\nSee more",
                "categories" => [
                    "Product/service"
                ],
                "email" => "woodsoda@gmail.com",
                "id" => "146925582117538"
            ]
        },
        {
            url: "https://www.instagram.com/woodsoda/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/woodsoda/photos/a.147314198745343/1873146389495440/"
        }
    ];
    public final tags:Array<Tag> = [];
}


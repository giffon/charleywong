package charleywong.entities;

class BOUNDbyHillywood implements Entity {
    public final id = "boundhillywood";
    public final name = [
        en => "BOUND by Hillywood"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/boundhillywood/",
            meta: [
                "about" => "CRAFT BEER + INDIE MUSIC + GOOD FOOD\n\nhttps://www.youtube.com/watch?v=k9od3_q0QMs",
                "categories" => [
                    "Coffee shop",
                    "Bar",
                    "Restaurant"
                ],
                "addr" => "32 Boundary Street, Prince Edward",
                "area" => "Kowloon, Hong Kong",
                "email" => "info@boundbeerandcoffee.com",
                "tel" => "23966488",
                "id" => "621516837961068"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/boundhillywood/posts/2305994452846623"
        },
        {
            url: "https://www.facebook.com/boundhillywood/photos/a.644658212313597/2303807259732009/"
        }
    ];
    public final tags:Array<Tag> = [];
}


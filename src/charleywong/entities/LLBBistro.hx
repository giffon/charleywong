package charleywong.entities;

class LLBBistro implements Entity {
    public final id = "llbbistrohk";
    public final name = [
        en => "LLB Bistro"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.openrice.com/zh/hongkong/r-llb-bistro-%E4%B8%8A%E7%92%B0-%E8%A5%BF%E5%BC%8F-all-day-breakfast-r610527"
        },
        {
            url: "https://www.facebook.com/llbbistrohk/",
            meta: [
                "id" => "1152527344908153",
                "about" => "188 Hollywood Rd\nBy LLB",
                "categories" => [
                    "Pub/Bar",
                    "Steakhouse"
                ],
                "addr" => "188 Hollywood Road",
                "area" => "Sheung Wan",
                "email" => "llbistro188@gmail.com",
                "tel" => "35946790"
            ]
        },
        {
            url: "https://www.instagram.com/llbbistrohk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/llbbistrohk/posts/1398995363594682"
        },
        {
            url: "https://www.facebook.com/llbbistrohk/posts/1400711440089741"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


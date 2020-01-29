package charleywong.entities;

class TravisLeatherStudio implements Entity {
    public final id = "LeatherCraft.Travis";
    public final name = [
        en => "Travis Leather Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LeatherCraft.Travis/",
            meta: [
                "about" => "由為自己度身訂造皮革製品，到跨出comfort zone經營自家皮革工作室，至今已踏入第八個年頭。堅持以一絲不苟的態度，挑選優質的製作工具、皮革、染料等，配以熟練的手法一針一線地製作每一",
                "categories" => [
                    "Local service",
                    "Internet marketing service",
                    "Shopping service"
                ],
                "addr" => "San Tam Rd",
                "area" => "Yuen Long",
                "email" => "travisleather@gmail.com",
                "tel" => "90162800",
                "id" => "1702390463348256"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LeatherCraft.Travis/posts/2393924370861525"
        },
        {
            url: "https://www.facebook.com/LeatherCraft.Travis/posts/2393931350860827"
        },
        {
            url: "https://www.facebook.com/LeatherCraft.Travis/posts/2316641025256527"
        }
    ];
    public final tags:Array<Tag> = [];
}


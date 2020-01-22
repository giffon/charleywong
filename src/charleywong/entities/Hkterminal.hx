package charleywong.entities;

class Hkterminal implements Entity {
    public final id = "hkterminal";
    public final name = [
        zh => "香港終端",
        en => "terminalhk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.terminalhk.com"
        },
        {
            url: "https://www.facebook.com/hkterminal/",
            meta: [
                "about" => "香港終端 (terminalhk.com) 官方 Facebook Page",
                "categories" => [
                    "Computer company",
                    "E-commerce website",
                    "Computer shop"
                ],
                "addr" => "3A Hung Cheong Factory Building, 742-748 Cheung Sha Wan Road",
                "area" => "Lai Chi Kok",
                "email" => "contact@terminalhk.com",
                "tel" => "37047358",
                "id" => "1491957431077967"
            ]
        },
        {
            url: "https://www.instagram.com/terminalhk_com/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkterminal/posts/2467762143497486"
        }
    ];
}


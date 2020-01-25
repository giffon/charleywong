package charleywong.entities;

class JuliusHandmadeWedding implements Entity {
    public final id = "juliushandmadewedding";
    public final name = [
        en => "Julius Handmade Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/juliushandmadewedding/",
            meta: [
                "id" => "1571617526223409",
                "categories" => [
                    "Product/service",
                    "Wedding planning service"
                ],
                "email" => "juliushandmadewedding@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/juliushandmadewedding/posts/2768728779845605"
        }
    ];
}


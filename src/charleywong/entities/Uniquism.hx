package charleywong.entities;

class Uniquism implements Entity {
    public final id = "Uni.Uniquism";
    public final name = [
        en => "Uniquism"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Uni.Uniquism/",
            meta: [
                "id" => "126981034094502",
                "about" => "Uni-Uniquism 獨家產品限量製作專門店\nCustommade & Limited Edition Product",
                "categories" => [
                    "Product/service",
                    "Photographer",
                    "Accessories"
                ],
                "email" => "uni.uniquism@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Uni.Uniquism/photos/a.129347060524566/2500535873405661/"
        }
    ];
    public final tags:Array<Tag> = [];
}


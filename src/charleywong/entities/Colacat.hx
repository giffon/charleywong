package charleywong.entities;

class Colacat implements Entity {
    public final id = "colacatGalleryAndStore";
    public final name = [
        en => "Colacat"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.colacatlee.com"
        },
        {
            url: "https://www.facebook.com/colacatGalleryAndStore/",
            meta: [
                "id" => "177452899560747",
                "about" => "Digital artist",
                "categories" => [
                    "Sports",
                    "Arts and entertainment",
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/colacatGalleryAndStore/posts/397680934204608"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        sport
    ];
}


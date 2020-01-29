package charleywong.entities;

class FlowerActually implements Entity {
    public final id = "theFlowerActually";
    public final name = [
        en => "Flower Actually"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.floweractually.com"
        },
        {
            url: "https://www.facebook.com/theFlowerActually/",
            meta: [
                "id" => "817416668623103",
                "about" =>
                "Flower Actually is a premium online florist in HK. Providing floral arrangements ranging from bouquet to orchid for occasions like Mother\'s Day, Valentine\'s Day, Birthday & Newborn. We aim to provide reliable, easy to use online floral shopping service.",
                "categories" => [
                    "Florist",
                    "Gift shop",
                    "Wedding venue"
                ],
                "email" => "enquiry@floweractually.com",
                "tel" => "68003587"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/theFlowerActually/posts/976045556093546"
        },
        {
            url: "https://www.facebook.com/theFlowerActually/posts/880607092304060"
        },
        {
            url: "https://www.facebook.com/theFlowerActually/photos/a.824493447915425/852456211785815/"
        }
    ];
    public final tags:Array<Tag> = [];
}


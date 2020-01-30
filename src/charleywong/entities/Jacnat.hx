package charleywong.entities;

class Jacnat implements Entity {
    public final id = "jacnat4u";
    public final name = [
        en => "Jacnat"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jacnat4u/",
            meta: [
                "about" => "最喜愛以幾何圖形及花形作基礎，配搭不同顏色的線材，加上皮革、木素材及珠子，去鉤織出一件件獨一無二的Jacnat style飾物。Love what you do, do what you love❤",
                "categories" => [
                    "Product/service"
                ],
                "email" => "jacnat.bc@gmail.com",
                "id" => "1000641189986062"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jacnat4u/posts/2610093065707525"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


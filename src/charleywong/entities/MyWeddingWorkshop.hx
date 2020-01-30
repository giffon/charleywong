package charleywong.entities;

class MyWeddingWorkshop implements Entity {
    public final id = "myweddingworkshop";
    public final name = [
        en => "My Wedding Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/myweddingworkshop/",
            meta: [
                "id" => "692209000865889",
                "categories" => [
                    "Bridal shop",
                    "Product/service"
                ],
                "addr" => "九龍新蒲崗五芳街12號利景工業大廈5樓516室",
                "area" => "Kowloon, Hong Kong",
                "email" => "myweddingworkhapihapi@gmail.com",
                "tel" => "56024800"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/myweddingworkshop/photos/a.798776106875844/2527693050650799/"
        },
        {
            url: "https://www.facebook.com/myweddingworkshop/photos/a.798776106875844/2523211391098965/"
        }
    ];
    public final tags:Array<Tag> = [
        bridal,
        makeup
    ];
}


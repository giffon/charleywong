package charleywong.entities;

class JOMOCoffeeCakes implements Entity {
    public final id = "JOMOCNC";
    public final name = [
        en => "JOMO Coffee & Cakes"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/JOMOCNC/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Tea room",
                    "Dessert shop"
                ],
                "addr" => "No 4,Water Street, Sai Ying Pun",
                "area" => "Hong Kong",
                "email" => "jomocnc@gmail.com",
                "tel" => "27620258",
                "id" => "310702119758741"
            ]
        },
        {
            url: "https://www.instagram.com/jomocoffeencakes/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JOMOCNC/photos/a.310753833086903/564968034332147/"
        },
        {
            url: "https://www.facebook.com/JOMOCNC/photos/a.310753833086903/552507882244829/"
        },
        {
            url: "https://www.facebook.com/JOMOCNC/photos/a.310753833086903/524231418405809/"
        }
    ];
}


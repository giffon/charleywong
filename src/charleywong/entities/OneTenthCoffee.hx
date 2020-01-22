package charleywong.entities;

class OneTenthCoffee implements Entity {
    public final id = "onetenthcoffee";
    public final name = [
        en => "One Tenth Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/onetenthcoffee/",
            meta: [
                "about" => "Speciality Coffee | Homemade Pastries",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "Flat 510 , 5/F ., Premier Centre , 20 Cheung Shun Street",
                "area" => "Lai Chi Kok",
                "email" => "info@onetenthcoffee.net",
                "id" => "2197345413810493"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/onetenthcoffee/photos/a.2289687631242937/2411261372418895/"
        },
        {
            url: "https://www.facebook.com/onetenthcoffee/photos/a.2289687631242937/2344965265715173/"
        },
        {
            url: "https://www.facebook.com/onetenthcoffee/photos/a.2289687631242937/2334016706810029/"
        }
    ];
}


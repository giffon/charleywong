package charleywong.entities;

class CoffeeCoffeeQuestion implements Entity {
    public final id = "coffeequestion";
    public final name = [
        en => "Coffee ? -Coffee Question"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/coffeequestion/",
            meta: [
                "about" => "The three things we simply must indulge in.\nCoffee Food Work\nSo, that’s what we did=]...\n\n\n\nSee more",
                "categories" => [
                    "Coffee shop",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "G/F 588B Fuk Wa Street",
                "area" => "Kowloon, Hong Kong",
                "email" => "coffeecoffeequestion@gmail.com",
                "tel" => "61119384"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/coffeequestion/photos/a.1688834758070606/2404534823167259/"
        },
        {
            url: "https://www.facebook.com/coffeequestion/photos/a.1688834758070606/2411481642472577/"
        }
    ];
}


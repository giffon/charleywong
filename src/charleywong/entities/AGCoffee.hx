package charleywong.entities;

class AGCoffee implements Entity {
    public final id = "agcoffee55";
    public final name = [
        en => "AGCoffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/agcoffee55/",
            meta: [
                "about" =>
                "AG Coffee provides patrons with a place to congregate , talk , read , write , entertain one another or pass a time , whether individual or small group.",
                "categories" => [
                    "Coffee shop",
                    "Theme restaurant"
                ],
                "addr" => "G/F Cheerful Court , 55 Choi Ha Road",
                "area" => "Ngau Tau Kok",
                "id" => "1708713475851284"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/agcoffee55/posts/2615349108521045"
        },
        {
            url: "https://www.facebook.com/agcoffee55/photos/a.1708745069181458/2584915628231060/"
        },
        {
            url: "https://www.facebook.com/agcoffee55/photos/a.1708745069181458/2527335480655742/"
        }
    ];
}


package charleywong.entities;

class ElamaMarket implements Entity {
    public final id = "ElamaMarket";
    public final name = [
        en => "Elama Market"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://elama.boutir.com"
        },
        {
            url: "https://www.facebook.com/ElamaMarket/",
            meta: [
                "id" => "477303715795985",
                "about" => "關於花\n芬蘭語解作Life,希望送花或收花人都能從生活中尋找到愛\nLiving a life of love",
                "categories" => [
                    "Florist"
                ],
                "email" => "elamamarket@gmail.com",
                "tel" => "96514358"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ElamaMarket/photos/a.962630290596656/1248620678664281/"
        },
        {
            url: "https://www.facebook.com/ElamaMarket/photos/a.962630290596656/1214376442088705/"
        },
        {
            url: "https://www.facebook.com/ElamaMarket/photos/a.962630290596656/1205622886297394/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}


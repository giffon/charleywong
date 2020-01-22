package charleywong.entities;

class LizCoffee implements Entity {
    public final id = "lizcoffeehk";
    public final name = [
        en => "Liz Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lizcoffeehk/",
            meta: [
                "about" => "• Specialty Coffee • Tea Coffee Spirit\n• Kombucha • Pourover\n• Espresso • Espressoda...\n\n\n\nSee more",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "email" => "hklizcoffee@gmail.com",
                "tel" => "55409715",
                "id" => "274832076449973"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lizcoffeehk/photos/a.306169206649593/433603163906196/"
        },
        {
            url: "https://www.facebook.com/lizcoffeehk/photos/a.306169206649593/505367736729738/"
        },
        {
            url: "https://www.facebook.com/lizcoffeehk/photos/a.306169206649593/494210911178754/"
        }
    ];
}


package charleywong.entities;

class NOTSpecialtyCoffee implements Entity {
    public final id = "720312224662364";
    public final name = [
        en => "NOT Specialty Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/720312224662364/",
            meta: [
                "id" => "720312224662364",
                "about" => "not a specialty coffee shop",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "9F, Hysan Place, 500 Hennessy Road, Causeway Bay, Hong Kong",
                "area" => "Hong Kong",
                "tel" => "21513822"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=3144711868889042&id=720312224662364"
        }
    ];
}


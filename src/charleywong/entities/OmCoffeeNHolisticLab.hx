package charleywong.entities;

class OmCoffeeNHolisticLab implements Entity {
    public final id = "omcoffeenholisticlab";
    public final name = [
        en => "Om Coffee N Holistic Lab"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hk.carousell.com/omcoffee"
        },
        {
            url: "https://www.facebook.com/omcoffeenholisticlab/",
            meta: [
                "id" => "1931825510452522",
                "categories" => [
                    "Coffee shop"
                ],
                "tel" => "57153364"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/omcoffeenholisticlab/photos/a.1932683183700088/2196222374012833/"
        },
        {
            url: "https://www.facebook.com/omcoffeenholisticlab/photos/a.1932683183700088/2140732752895129/"
        }
    ];
    public final tags:Array<Tag> = [];
}


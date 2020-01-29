package charleywong.entities;

class Betabularasa implements Entity {
    public final id = "betabularasa";
    public final name = [
        zh => "白紙花舍",
        en => "be tabula rasa"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/betabularasa/"
        },
        {
            url: "https://www.facebook.com/betabularasa/",
            meta: [
                "id" => "769324249745382",
                "about" => "Fresh Flower | Dried Flower | Greeting | Wedding | Decoration",
                "categories" => [
                    "Florist",
                    "Art"
                ],
                "addr" => "93 Lai Chi Kok Road Prince Edward",
                "area" => "Hong Kong",
                "email" => "info@betabularasa.co",
                "tel" => "90102761"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/betabularasa/photos/a.769324946411979/2949186668425785/"
        },
        {
            url: "https://www.facebook.com/betabularasa/photos/a.796140087063798/2851488131528973/"
        }
    ];
    public final tags:Array<Tag> = [
        florist,
        wedding
    ];
}


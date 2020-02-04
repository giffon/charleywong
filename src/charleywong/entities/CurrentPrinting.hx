package charleywong.entities;

class CurrentPrinting implements Entity {
    public final id = "current.printing";
    public final name = [
        en => "Current Printing"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/current.printing/",
            meta: [
                "id" => "108287320664772",
                "about" => "本土印刷studio，專門製作/印刷香港人文宣，旨在以良心價壯大實體文宣力量",
                "categories" => [
                    "Local service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/current.printing/photos/a.109216377238533/130704655089705/"
        },
        {
            url: "https://www.facebook.com/current.printing/photos/a.109216377238533/126902695469901/"
        },
        {
            url: "https://www.facebook.com/current.printing/photos/a.109216377238533/122181322608705/"
        }
    ];
    public final tags:Array<Tag> = [
        printing
    ];
}


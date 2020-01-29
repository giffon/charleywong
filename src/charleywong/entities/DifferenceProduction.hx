package charleywong.entities;

class DifferenceProduction implements Entity {
    public final id = "differenceHK";
    public final name = [
        en => "Difference Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.difference.com.hk"
        },
        {
            url: "https://www.facebook.com/differenceHK/",
            meta: [
                "id" => "164568483625017",
                "about" =>
                "Difference Production provides a range of photography & video services, we have over 10 years experience working on fashion, editorial, advertising & wedding projects. We sincerely provide creative solutions to fulfill & satisfy your needs.",
                "categories" => [
                    "Photography & videography"
                ],
                "addr" => "6 Sun Yip St, Chai Wan, Hong Kong",
                "area" => "Hong Kong",
                "email" => "info@difference.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/differenceHK/photos/a.526730207408841/2567819479966560/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}


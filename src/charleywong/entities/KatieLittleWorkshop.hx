package charleywong.entities;

class KatieLittleWorkshop implements Entity {
    public final id = "Katielittleworkshop";
    public final name = [
        en => "Katie Little Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Katielittleworkshop/",
            meta: [
                "id" => "106369709399760",
                "about" => "All about Love, All about Wedding~ Design you dream wedding.\nInstragram : https://instagram.com/katielittleworkshop",
                "categories" => [
                    "Wedding planning service"
                ],
                "email" => "katie.little.workshop@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/katielittleworkshop/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Katielittleworkshop/photos/a.179302628773134/2518547118181995/"
        }
    ];
    public final tags:Array<Tag> = [];
}


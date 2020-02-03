package charleywong.entities;

class GlobalsolidarityHK implements Entity {
    public final id = "globalsolidarityHK";
    public final name = [
        zh => "全球集氣反送中",
        en => "Global Solidarity with Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://twitter.com/GlobalSolidHK"
        },
        {
            url: "https://www.facebook.com/globalsolidarityHK/",
            meta: [
                "id" => "1546241315607380",
                "about" => "Five demands; not one less.",
                "categories" => [
                    "Community",
                    "Cause",
                    "Social club"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/globalsolidarityHK/photos/a.1549196218645223/2488522721379230/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}


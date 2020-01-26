package charleywong.entities;

class VictorLuiPhotography implements Entity {
    public final id = "VictorLuiPhotography";
    public final name = [
        en => "Victor Lui Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.vicluichannel.com"
        },
        {
            url: "https://www.facebook.com/VictorLuiPhotography/",
            meta: [
                "id" => "253486234703312",
                "about" => "Victor Lui is a worldwide photographer based in Hong Kong & Macau.\nService: Local/Overseas Pre-Wedding / Engagement / Wedding Day",
                "categories" => [
                    "Artist",
                    "Photographer"
                ],
                "email" => "info@vicluichannel.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/VictorLuiPhotography/photos/a.510857822299484/2853574991361077/"
        }
    ];
}


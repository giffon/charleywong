package charleywong.entities;

class Stegermatt implements Entity {
    public final id = "Stegermatt";
    public final name = [
        zh => "石賈墨"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.stegermatt.de/lebenslauf"
        },
        {
            url: "https://www.facebook.com/Stegermatt/",
            meta: [
                "id" => "201600160200389",
                "about" => "石賈墨，現居德國的香港人。\n正職是工程師，所以喜歡把德語當成科學來讀。",
                "categories" => [
                    "Blogger"
                ],
                "email" => "stegermatt@stegermatt.de"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Stegermatt/photos/a.317047435322327/1050414781985585/"
        },
        {
            url: "https://www.facebook.com/Stegermatt/photos/a.317047435322327/1040056773021386/"
        },
        {
            url: "https://www.facebook.com/Stegermatt/photos/a.317047435322327/997083113985419/"
        }
    ];
}


package charleywong.entities;

class HongKongDragonAirlinesFlightAttendantsAssociation implements Entity {
    public final id = "kafaahk";
    public final name = [
        en => "Hong Kong Dragon Airlines Flight Attendants Association"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kafaa.org.hk"
        },
        {
            url: "https://www.facebook.com/kafaahk/",
            meta: [
                "id" => "930652983788817",
                "about" => "Public page of the KAFAA.\n\nYour power makes FAA stronger\nLet’s work together!",
                "categories" => [
                    "Trade union"
                ],
                "email" => "info@kafaa.org.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kafaahk/posts/1136895783164535"
        },
        {
            url: "https://www.facebook.com/kafaahk/posts/1217160695138043"
        },
        {
            url: "https://www.facebook.com/kafaahk/posts/1296112380576207"
        }
    ];
    public final tags:Array<Tag> = [
        organization,
        transport
    ];
}


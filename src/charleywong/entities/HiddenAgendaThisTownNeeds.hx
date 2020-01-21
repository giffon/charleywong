package charleywong.entities;

class HiddenAgendaThisTownNeeds implements Entity {
    public final id = "Thistownneeds";
    public final name = [
        en => "Hidden Agenda: This Town Needs"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Thistownneeds/",
            meta: [
                "about" => "Local & International live music, hand-craft beer, cultures and entertainment",
                "categories" => [
                    "Performance art theatre",
                    "Live music venue"
                ],
                "addr" => "1F, Commercial Accommodation, Ocean One, 6 Shung Shun Street",
                "area" => "Kwun Tong",
                "email" => "thistownneeds@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/thistownneeds/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Thistownneeds/posts/2524985404227802"
        }
    ];
}


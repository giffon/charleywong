package charleywong.entities;

class Vmusiccentre implements Entity {
    public final id = "Vmusiccentre";
    public final name = [
        en => "Vmusic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/user/vmsuiccenter36891481"
        },
        {
            url: "https://www.facebook.com/Vmusiccentre/",
            meta: [
                "id" => "281195331904392",
                "about" => "Vmusic音樂中心\nyoutube:http://www.youtube.com/user/vmsuiccenter36891481?feature=watch",
                "categories" => [
                    "Music school",
                    "Music video"
                ],
                "email" => "vmusiccenter@gmail.com",
                "tel" => "36891481"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Vmusiccentre/photos/a.858246820865904/2800886229935277/"
        },
        {
            url: "https://www.facebook.com/Vmusiccentre/videos/368535260755832/"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}


package charleywong.entities;

class RubberBand implements Entity {
    public final id = "RubberBandHK";
    public final name = [
        en => "RubberBand"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/user/RubberBandHK"
        },
        {
            url: "https://www.facebook.com/RubberBandHK/",
            meta: [
                "id" => "44627301433",
                "about" => "RubberBand於2004年成立，樂隊現任成員包括主音6號、結他手阿正、低音結他手阿偉及鼓手泥鯭。\n\nBookings or enquiry:\nVivian Kwok - vivian@r-flat.com",
                "categories" => [
                    "Performing arts",
                    "Musician/band"
                ],
                "email" => "rubberbandweb@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/rubberband/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RubberBandHK/posts/10156312688251434"
        },
        {
            url: "https://www.facebook.com/RubberBandHK/posts/10151458885111434"
        },
        {
            url: "https://www.facebook.com/RubberBandHK/posts/10151475402676434"
        }
    ];
}


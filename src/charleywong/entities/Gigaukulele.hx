package charleywong.entities;

class Gigaukulele implements Entity {
    public final id = "gigaukulele";
    public final name = [
        zh => "Giga 音樂中心 X Ukulele X Guitar X Bass X Drum X Saxophone"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/gigaukulele/",
            meta: [
                "id" => "134785706584478",
                "about" => "Guitar Ukulele Bass Guitar Drum Band",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "gigamusicbox@gmail.com",
                "tel" => "55407891"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gigaukulele/posts/2949892861740401"
        },
        {
            url: "https://www.facebook.com/gigaukulele/photos/a.493822794014099/2856609171068771/"
        },
        {
            url: "https://www.facebook.com/gigaukulele/posts/2951240528272301"
        }
    ];
}


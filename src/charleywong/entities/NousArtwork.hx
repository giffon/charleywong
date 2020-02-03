package charleywong.entities;

class NousArtwork implements Entity {
    public final id = "nouartwork";
    public final name = [
        en => "Nou\'s Artwork"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.artstation.com/artist/kayeinou"
        },
        {
            url: "https://www.facebook.com/nouartwork/",
            meta: [
                "id" => "210158422487389",
                "about" => "阿腦，一個畫畫又搞吓藝術嘅腦老師。\nNou. Artist, illustrator,Painting tutor.",
                "categories" => [
                    "Artist",
                    "Tutor/teacher"
                ],
                "email" => "kayei0715@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/nouartwork/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/nouartwork/photos/a.210166199153278/1387643791405507/"
        },
        {
            url: "https://www.facebook.com/nouartwork/posts/1307072629462624"
        },
        {
            url: "https://www.facebook.com/nouartwork/photos/a.210166199153278/1271672273002660/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


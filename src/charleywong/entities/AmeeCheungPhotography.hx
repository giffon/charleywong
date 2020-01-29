package charleywong.entities;

class AmeeCheungPhotography implements Entity {
    public final id = "ameephotos";
    public final name = [
        en => "Amee Cheung Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.ameecheungphotography.com"
        },
        {
            url: "https://www.facebook.com/ameephotos/",
            meta: [
                "id" => "396317597133451",
                "about" => "Film wedding and portrait photographer based in Hong Kong and willing to travel worldwide.",
                "categories" => [
                    "Professional service"
                ],
                "email" => "info@ameecheungphotography.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ameephotos/photos/a.396341590464385/2545231382242051/"
        }
    ];
    public final tags:Array<Tag> = [];
}


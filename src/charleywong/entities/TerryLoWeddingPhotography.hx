package charleywong.entities;

class TerryLoWeddingPhotography implements Entity {
    public final id = "terrylowedding";
    public final name = [
        en => "Terry Lo Wedding Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.terrylowedding.com"
        },
        {
            url: "https://www.facebook.com/terrylowedding/",
            meta: [
                "id" => "119786758082726",
                "about" => "Email - terrylowedding@gmail.com\nAddress - 2/F, 1 Wing Fung Street, Wan Chai",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "2F, 1 Wing Fung Street, Wan Chai",
                "area" => "Hong Kong",
                "email" => "terrylowedding@gmail.com",
                "tel" => "93230380"
            ]
        },
        {
            url: "https://www.instagram.com/terry325/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/terrylowedding/photos/a.593449660716431/2605261302868580/"
        },
        {
            url: "https://www.facebook.com/terrylowedding/posts/2614588115269232"
        },
        {
            url: "https://www.facebook.com/terrylowedding/posts/2429442007117178"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class TArt implements Entity {
    public final id = "tartwedding";
    public final name = [
        en => "T. Art"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.tartvideo.com"
        },
        {
            url: "https://www.facebook.com/tartwedding/",
            meta: [
                "id" => "181499898585504",
                "categories" => [
                    "Arts and entertainment",
                    "Photography & videography"
                ],
                "email" => "info@tartvideo.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tartwedding/photos/a.187117654690395/2568159046586232/"
        }
    ];
    public final tags:Array<Tag> = [];
}


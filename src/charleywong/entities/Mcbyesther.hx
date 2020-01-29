package charleywong.entities;

class Mcbyesther implements Entity {
    public final id = "mcbyesther";
    public final name = [
        en => "Mcbyesther"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.multiplechoiceshk.com"
        },
        {
            url: "https://www.facebook.com/mcbyesther/",
            meta: [
                "id" => "958277104266289",
                "about" => "透過語錄讓你發現生命中更多的可能性\nExplore more possible choices in your life",
                "categories" => [
                    "Motivational speaker",
                    "Writer"
                ],
                "email" => "multiplechoices.info@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mcbyesther/posts/2610511569042826"
        },
        {
            url: "https://www.facebook.com/mcbyesther/photos/a.1028641703896495/2544884475605536/"
        }
    ];
    public final tags:Array<Tag> = [];
}


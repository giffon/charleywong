package charleywong.entities;

class FilMe implements Entity {
    public final id = "FilmeHappyShooting";
    public final name = [
        en => "FilMe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FilmeHappyShooting/",
            meta: [
                "id" => "106362126051380",
                "about" => "we relocate to Japan in 2017, we have become an international analogue shop.",
                "categories" => [
                    "Camera/photo",
                    "Photographer"
                ],
                "email" => "info@thefilme.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FilmeHappyShooting/posts/835829796437939"
        },
        {
            url: "https://www.facebook.com/FilmeHappyShooting/posts/826947083992877"
        }
    ];
    public final tags:Array<Tag> = [
        photography,
        shop
    ];
}


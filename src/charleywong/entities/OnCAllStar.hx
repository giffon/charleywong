package charleywong.entities;

class OnCAllStar implements Entity {
    public final id = "onnnnn";
    public final name = [
        en => "On Chan",
        zh => "陳健安"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/onnnnn/",
            meta: [
                "id" => "144726498505",
                "about" => "陳健安 Onchan\n\n•C AllStar...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Musician/band"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/onnnnn/photos/a.212211948505/10157849789113506/"
        },
        {
            url: "https://www.facebook.com/onnnnn/photos/a.212211948505/10157805074758506/"
        },
        {
            url: "https://www.facebook.com/onnnnn/photos/a.212211948505/10157831111628506/"
        },
        {
            url: "https://www.facebook.com/onnnnn/photos/a.212211948505/10156971881908506/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure,
        music
    ];
}


package charleywong.entities;

class GooseSiuPhotography implements Entity {
    public final id = "GooseSiuPhotography";
    public final name = [
        en => "Goose Siu Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://vimeo.com/goosesiuphotography"
        },
        {
            url: "https://www.facebook.com/GooseSiuPhotography/",
            meta: [
                "id" => "362093513845730",
                "about" => "Goose is a wedding photojournalist.",
                "categories" => [
                    "Photographer"
                ],
                "email" => "goosesiu@gmail.com",
                "tel" => "64330072"
            ]
        },
        {
            url: "https://www.instagram.com/goosesiu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GooseSiuPhotography/posts/2453845634670497"
        }
    ];
    public final tags:Array<Tag> = [];
}


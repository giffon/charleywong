package charleywong.entities;

class Nikkiloveuphotography implements Entity {
    public final id = "nikkiloveuphoto";
    public final name = [
        en => "Nikkiloveu photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://nikkiloveu.com"
        },
        {
            url: "https://www.facebook.com/nikkiloveuphoto/",
            meta: [
                "id" => "322012241187165",
                "about" => "照片是靜止的優雅和情感的瞬間。一位女生認真投入攝影，聆聽別人的故事，透過照片分享感動 / Wedding Portrait Family Maternity Kids Babies / Fine art photography",
                "categories" => [
                    "Photographer"
                ],
                "email" => "nikkiloveu.photo@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/nikkiloveuphoto/photos/a.322017384519984/2466988283356206/"
        }
    ];
    public final tags:Array<Tag> = [];
}


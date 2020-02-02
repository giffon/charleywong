package charleywong.entities;

class Ricegas implements Entity {
    public final id = "ricegas";
    public final name = [
        zh => "江記"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kcomix.com"
        },
        {
            url: "https://www.facebook.com/ricegas/",
            meta: [
                "id" => "22647267752",
                "about" => "\"The World is a Big Playground!\" - 江記 。 沒有分辦喜劇和悲劇的能力，令人哭笑不得。在瘋狂的世界，要創作比她更瘋狂的作品！",
                "categories" => [
                    "Artist"
                ],
                "email" => "penguinlab2008@gmail.com",
                "tel" => "98530012"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ricegas/photos/a.405478267752/10156683514042753/"
        },
        {
            url: "https://www.facebook.com/ricegas/photos/a.405478267752/10156602766227753/"
        },
        {
            url: "https://www.facebook.com/ricegas/photos/a.405478267752/10156709249212753/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


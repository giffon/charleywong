package charleywong.entities;

class CeliaCeleste implements Entity {
    public final id = "celianceleste";
    public final name = [
        en => "Celia Celeste"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/celianceleste/",
            meta: [
                "about" => "集合Celia Celeste的手作飾物 • 服飾 • 生活日常 • 美食！",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "addr" => "香港葵涌廣場三樓時尚坊38號",
                "area" => "Hong Kong",
                "email" => "celia9452@hotmail.com",
                "id" => "291700884303768"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/celianceleste/photos/a.948055415334975/1445648745575637/"
        }
    ];
    public final tags:Array<Tag> = [];
}


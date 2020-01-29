package charleywong.entities;

class Hkcitizenmisssticker implements Entity {
    public final id = "hkcitizenmisssticker";
    public final name = [
        zh => "香港市民貼紙小姐"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkcitizenmisssticker/",
            meta: [
                "categories" => [
                    "Personal blog"
                ],
                "id" => "111821543516370"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkcitizenmisssticker/photos/a.113633223335202/176226903742500/"
        },
        {
            url: "https://www.facebook.com/hkcitizenmisssticker/posts/162211568477367"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Friendsphotog implements Entity {
    public final id = "Friendsphotog";
    public final name = [
        en => "Friendsphotog"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://friendsphotog.com"
        },
        {
            url: "https://www.facebook.com/Friendsphotog/",
            meta: [
                "id" => "155720507810092",
                "about" => "\"Be friends. In wedding\"",
                "categories" => [
                    "Photographer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Friendsphotog/photos/a.471795636202576/2556187131096739/"
        }
    ];
    public final tags:Array<Tag> = [];
}


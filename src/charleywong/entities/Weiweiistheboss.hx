package charleywong.entities;

class Weiweiistheboss implements Entity {
    public final id = "weiweiistheboss";
    public final name = [
        zh => "貓奴喵士多"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/weiweiistheboss/",
            meta: [
                "about" => "威威：「奴才，你快啲開間店畀我做店長。」\n奴才：「...」\n威威：「個店名同Logo我要高調得嚟帶點低調呀唔該！」\n奴才：「...」",
                "categories" => [
                    "Community"
                ],
                "id" => "882587401936524"
            ]
        },
        {
            url: "https://www.instagram.com/weiweiistheboss/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/weiweiistheboss/photos/a.882655201929744/1178439339017994/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop,
        accessories
    ];
}


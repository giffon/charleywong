package charleywong.entities;

class Rogerchunguniverse implements Entity {
    public final id = "rogerchunguniverse";
    public final name = [
        en => "Roger Chung",
        zh => "鍾一諾"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkchimes.com"
        },
        {
            url: "https://www.facebook.com/rogerchunguniverse/",
            meta: [
                "id" => "570641313388881",
                "about" => "公共衛生學者/唱作歌手/音樂監製/電台主持/廣告配音員\nA Singing Scholar",
                "categories" => [
                    "Medical and health",
                    "Arts and entertainment",
                    "Musician/band"
                ],
                "email" => "admin@hkchimes.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rogerchunguniverse/posts/776782026108141"
        },
        {
            url: "https://www.facebook.com/rogerchunguniverse/photos/a.571138570005822/787754375010906/"
        }
    ];
}


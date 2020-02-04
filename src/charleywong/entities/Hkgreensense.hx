package charleywong.entities;

class Hkgreensense implements Entity {
    public final id = "hkgreensense";
    public final name = [
        zh => "環保觸覺",
        en => "Green Sense"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.greensense.org.hk"
        },
        {
            url: "https://www.facebook.com/hkgreensense/",
            meta: [
                "id" => "51985126606",
                "about" => "我們透過調查、監察，點出社會有違環保的現象，以提高香港市民環保意識及觸覺，從而達至一個更環保的社會，令下一代的生活及生態環境得到保障。",
                "categories" => [
                    "Non-profit organisation",
                    "Environmental conservation organisation"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkgreensense/posts/10156116984901607"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}


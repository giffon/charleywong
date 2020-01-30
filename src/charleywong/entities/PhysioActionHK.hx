package charleywong.entities;

class PhysioActionHK implements Entity {
    public final id = "PhysioActionHK";
    public final name = [
        zh => "物理治療起動",
        en => "Physio Action"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PhysioActionHK/",
            meta: [
                "about" => "-我們是物理治療師\n-關心香港民主、自由和人權狀況\n-集結業界的力量，監察政府，建立公民社會",
                "categories" => [
                    "Community"
                ],
                "email" => "physio.action.hk@gmail.com",
                "id" => "463447537192136"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PhysioActionHK/posts/1109338269269723"
        }
    ];
    public final tags:Array<Tag> = [
        medical,
        organization
    ];
}


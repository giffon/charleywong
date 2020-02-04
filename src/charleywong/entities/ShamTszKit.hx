package charleywong.entities;

class ShamTszKit implements Entity {
    public final id = "Sham.Tsz.Kit";
    public final name = [
        zh => "岑子杰",
        en => "Jimmy Sham"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Sham.Tsz.Kit/",
            meta: [
                "id" => "105887380767443",
                "about" => "民間人權陣線 civil human rights front 召集人",
                "categories" => [
                    "Politician"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Sham.Tsz.Kit/posts/149478273075020"
        },
        {
            url: "https://www.facebook.com/Sham.Tsz.Kit/photos/a.109430240413157/137827577573423/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


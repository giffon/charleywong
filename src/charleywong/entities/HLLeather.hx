package charleywong.entities;

class HLLeather implements Entity {
    public final id = "HLLeather";
    public final name = [
        zh => "指心革物",
        en => "HL_Leather"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/1913199288760398/",
            meta: [
                "categories" => [
                    "Design & fashion"
                ],
                "tel" => "68451572",
                "id" => "1913199288760398"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=2654950301251956&id=1913199288760398"
        },
        {
            url: "https://www.facebook.com/1913199288760398/photos/a.2006728309407495/2558349907578663/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


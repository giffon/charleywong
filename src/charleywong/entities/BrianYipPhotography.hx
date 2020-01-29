package charleywong.entities;

class BrianYipPhotography implements Entity {
    public final id = "BrianYipPhotography";
    public final name = [
        en => "Brian Yip Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://brianyipphotography.blogspot.com"
        },
        {
            url: "https://www.facebook.com/BrianYipPhotography/",
            meta: [
                "id" => "74254838857",
                "about" =>
                "A photographer who loves photographing precious moments.\nSpecialize in wedding, pre-wedding, engagement, portrait, family, newborn, commercial photography",
                "categories" => [
                    "Professional service"
                ],
                "email" => "brianyip.photography@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BrianYipPhotography/photos/a.10150430176973858/10159084562358858/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}


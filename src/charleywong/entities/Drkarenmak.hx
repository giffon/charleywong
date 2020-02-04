package charleywong.entities;

class Drkarenmak implements Entity {
    public final id = "drkarenmak";
    public final name = [
        zh => "Karen 博士 Dr. Karen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.drkarenmak.com"
        },
        {
            url: "https://www.facebook.com/drkarenmak/",
            meta: [
                "id" => "835440119857994",
                "about" => "科學傳播、寓學於樂\nScience communication & Edutainment",
                "categories" => [
                    "Scientist",
                    "Science website"
                ],
                "email" => "chkaren@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/drkarenmak/photos/a.835467403188599/2543349612400361/"
        },
        {
            url: "https://www.facebook.com/drkarenmak/photos/a.835467403188599/2455563521178971/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


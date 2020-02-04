package charleywong.entities;

class CharlesMokOffice implements Entity {
    public final id = "CharlesMokOffice";
    public final name = [
        en => "Charles Mok",
        zh => "莫乃光"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.charlesmok.hk"
        },
        {
            url: "https://www.facebook.com/CharlesMokOffice/",
            meta: [
                "id" => "232372840163384",
                "about" => "立法會資訊科技界議員\nLegislative Councillor (Information Technology)",
                "categories" => [
                    "Politician"
                ],
                "email" => "charlesmok@charlesmok.hk",
                "tel" => "23523129"
            ]
        },
        {
            url: "https://www.instagram.com/charlesmok/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CharlesMokOffice/posts/2445725168828129"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


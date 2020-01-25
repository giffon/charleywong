package charleywong.entities;

class SlamSportsAssociation implements Entity {
    public final id = "SlamSportsAssociation";
    public final name = [
        zh => "深籃體育會"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.slamsportshongkong.com"
        },
        {
            url: "https://www.facebook.com/SlamSportsAssociation/",
            meta: [
                "id" => "519739921399975",
                "about" => "深籃精神：\n專注，熱誠，承擔，紀律，尊重，服從，團隊！\nhttp://www.slamsportshongkong.com",
                "categories" => [
                    "Education",
                    "Coach"
                ],
                "email" => "slamsportsassociation@yahoo.com.hk",
                "tel" => "60267889"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SlamSportsAssociation/posts/3410952525612019"
        }
    ];
}


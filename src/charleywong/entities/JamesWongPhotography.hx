package charleywong.entities;

class JamesWongPhotography implements Entity {
    public final id = "jameswongphotography";
    public final name = [
        en => "James Wong Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.wongwai.co.uk"
        },
        {
            url: "https://www.facebook.com/jameswongphotography/",
            meta: [
                "id" => "140323686026416",
                "about" => "James Wong is specialised in Weddings photograhy, Portraiture, Destination Wedding & Maternity portrait",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "K202 The biscuit factory, Drummond road",
                "area" => "London, United Kingdom",
                "email" => "jameswongwai@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jameswongphotography/photos/a.141988409193277/2669968509728575/"
        }
    ];
    public final tags:Array<Tag> = [];
}


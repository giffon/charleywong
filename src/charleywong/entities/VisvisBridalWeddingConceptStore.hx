package charleywong.entities;

class VisvisBridalWeddingConceptStore implements Entity {
    public final id = "visavisbridal";
    public final name = [
        en => "Vis-à-vis Bridal Wedding Concept Store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.visavisbridal.com"
        },
        {
            url: "https://www.facebook.com/visavisbridal/",
            meta: [
                "id" => "194289260596401",
                "about" => "由Vis-à-vis Bridal Creative Director Gertie Ng帶領\n一站全包\n婚紗+攝影+化妝+造型配搭指導...\n\n\n\n\nSee more",
                "categories" => [
                    "Bridal shop",
                    "Photographer",
                    "Wedding planning service"
                ],
                "addr" => "2/F, 6 Wilmer Street, Sai Ying Pun",
                "area" => "Hong Kong",
                "email" => "visavisbridal.info@gmail.com",
                "tel" => "28694881"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/visavisbridal/photos/a.812970132061641/3261931893832107/"
        },
        {
            url: "https://www.facebook.com/visavisbridal/photos/a.414620071896651/3253940624631234/"
        }
    ];
}


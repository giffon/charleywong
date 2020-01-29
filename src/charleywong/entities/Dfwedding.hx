package charleywong.entities;

class Dfwedding implements Entity {
    public final id = "dfwedding";
    public final name = [
        en => "DF Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dfwedding/",
            meta: [
                "id" => "345141338833504",
                "about" => "囍宴坊婚禮及宴會統籌公司是一所專門協助客戶籌辦婚宴聚會及求婚的公司，籌劃婚宴特別且一絲不苟，深受客戶歡迎！",
                "categories" => [
                    "Consultation agency",
                    "Event planner"
                ],
                "addr" => "葵涌大連排道144號金豐工業大廈二座17樓T室",
                "area" => "Hong Kong",
                "email" => "enquiry@dfwedding.info"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dfwedding/posts/2971284039552541"
        }
    ];
    public final tags:Array<Tag> = [
        wedding
    ];
}


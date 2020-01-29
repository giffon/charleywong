package charleywong.entities;

class SisHoneyFloralDesign implements Entity {
    public final id = "SisHoney.flower";
    public final name = [
        en => "SisHoney Floral Design"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://sishoney.com.hk"
        },
        {
            url: "https://www.facebook.com/SisHoney.flower/",
            meta: [
                "id" => "534305216613489",
                "about" => "Sis.Honey成立於2013年，是觀塘的新式花店，打破傳統花店的框框，為花品注入韓式及歐式風格，專門運用世界各地新鮮的花材，為客人tailor made獨一無二的花品！",
                "categories" => [
                    "Florist",
                    "Retail company",
                    "Product/service"
                ],
                "email" => "sishoney.flower@gmail.com",
                "tel" => "63399726"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SisHoney.flower/posts/2683693495007973"
        },
        {
            url: "https://www.facebook.com/SisHoney.flower/posts/2643757925668197"
        }
    ];
    public final tags:Array<Tag> = [];
}


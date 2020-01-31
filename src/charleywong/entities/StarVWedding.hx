package charleywong.entities;

class StarVWedding implements Entity {
    public final id = "starvwedding";
    public final name = [
        en => "Star V Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://starvwedding.com"
        },
        {
            url: "https://www.facebook.com/starvwedding/",
            meta: [
                "id" => "1131062973653630",
                "about" => "Star V Wedding婚紗攝影公司，提供專業婚紗攝影、頂級婚紗禮服與星級時尚妝髮服務，為新人貼身打造一生只有一次的浪漫香港及海外的婚紗攝影之旅。\n詳情請致電或電郵查詢",
                "categories" => [
                    "Consultation agency",
                    "Photographer"
                ],
                "addr" => "觀塘興業街31號興業中心3樓A28室",
                "area" => "Hong Kong",
                "email" => "starvworkshop@gmail.com",
                "tel" => "53189797"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/starvwedding/posts/2317757374984178"
        },
        {
            url: "https://www.facebook.com/starvwedding/photos/a.1158006157625978/2605522716207641/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}


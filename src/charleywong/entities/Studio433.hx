package charleywong.entities;

class Studio433 implements Entity {
    public final id = "433Studio";
    public final name = [
        en => "4\'33\" studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/433Studio/",
            meta: [
                "about" => "飾品主要使用925純銀。14k 包金。小寶石等不易過敏既材質。。讓女孩們每日都可以放心配戴!!\nInstagram: 433STUDIO",
                "categories" => [
                    "Jewellery/watches",
                    "Jewellery & watches shop",
                    "Jewellery wholesaler"
                ],
                "email" => "info433studio@gmail.com",
                "tel" => "92036659",
                "id" => "264821953624130"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/433Studio/photos/a.744803625625958/2315685468537758/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


package charleywong.entities;

class Hkdistillery implements Entity {
    public final id = "hkdistillery";
    public final name = [
        zh => "香港蒸餾所",
        en => "Hong Kong Distillery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.hkdistill.com"
        },
        {
            url: "https://www.facebook.com/hkdistillery/",
            meta: [
                "id" => "125455454706011",
                "about" =>
                "We provide Fresh Herbal Extracts, Distillation Instruments, Laboratory/ Glassware Design & Consultant and also Environmental Engineering.",
                "categories" => [
                    "Science, technology & engineering",
                    "Aromatherapy service"
                ],
                "email" => "support@hkdistill.com",
                "tel" => "55453592"
            ]
        },
        {
            url: "https://www.instagram.com/hk_distillery/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkdistillery/photos/a.205951723323050/507701996481353/"
        },
        {
            url: "https://www.facebook.com/hkdistillery/posts/498622347389318"
        }
    ];
}


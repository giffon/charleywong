package charleywong.entities;

class CaelusGallery implements Entity {
    public final id = "CaelusGallery";
    public final name = [
        en => "Caelus Gallery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://caelusgallery.wixsite.com/caelusgallery"
        },
        {
            url: "https://www.facebook.com/CaelusGallery/",
            meta: [
                "id" => "160188754501974",
                "about" => "擁有多年婚攝經驗,提供本地及海外婚紗及婚禮拍攝服務,歡迎查詢 Pre wedding/Overseas Pre wedding/Wedding Day 拍攝服務.",
                "categories" => [
                    "Wedding planning service",
                    "Photographer"
                ],
                "addr" => "11/F,Rm 09,Nos.26-38 Sha Tsui RD,Thriving IND CTR,Tsuen Wan,NT",
                "area" => "Hong Kong",
                "email" => "caelusgallery@gmail.com",
                "tel" => "64649496"
            ]
        },
        {
            url: "https://www.instagram.com/caelusgallery/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CaelusGallery/posts/705617003292477"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding,
    ];
}


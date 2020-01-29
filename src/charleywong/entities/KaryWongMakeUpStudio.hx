package charleywong.entities;

class KaryWongMakeUpStudio implements Entity {
    public final id = "Karyywongmakeup";
    public final name = [
        en => "Kary Wong Make Up Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Karyywongmakeup/",
            meta: [
                "id" => "561102940623626",
                "about" => "Bride Makeup\nBridesmaid Makeup\nBanquets Makeup...\n\n\nSee more",
                "categories" => [
                    "Makeup artist",
                    "Beauty shop",
                    "Beauty supplier"
                ],
                "addr" => "Shiu Fat Industrial Building",
                "area" => "Ngau Tau Kok",
                "email" => "karywongmua@gmail.com",
                "tel" => "51991769"
            ]
        },
        {
            url: "https://www.instagram.com/karyywongmua/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Karyywongmakeup/posts/2628795350521031"
        }
    ];
    public final tags:Array<Tag> = [];
}


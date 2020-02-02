package charleywong.entities;

class Demosisto implements Entity {
    public final id = "demosisto";
    public final name = [
        zh => "香港眾志",
        en => "Demosistō"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://demosisto.hk"
        },
        {
            url: "https://www.facebook.com/demosisto/",
            meta: [
                "id" => "495193710689456",
                "about" => "香港眾志是立足民間的政治團體，以街頭抗爭、建設公民社會和國際連結為主軸，致力推動民主、進步價值及港人主體意識，從而建立平等公義的多元城市，實現民主治港的理想願景。",
                "categories" => [
                    "Political organisation"
                ],
                "email" => "info@demosisto.hk",
                "tel" => "35946693"
            ]
        },
        {
            url: "https://www.instagram.com/demosistohkofficial/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/demosisto/photos/a.497376730471154/1199597310249089/"
        },
        {
            url: "https://www.facebook.com/demosisto/posts/1190266931182127"
        },
        {
            url: "https://www.facebook.com/demosisto/videos/2380690978855035/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}


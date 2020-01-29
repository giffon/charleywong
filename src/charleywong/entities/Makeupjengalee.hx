package charleywong.entities;

class Makeupjengalee implements Entity {
    public final id = "jengaleemakeup";
    public final name = [
        en => "Makeupjengalee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.fotop.net/Jenga326"
        },
        {
            url: "https://www.facebook.com/jengaleemakeup/",
            meta: [
                "id" => "202131963135348",
                "about" => "新娘及宴會造型 , 雜誌及廣告化妝, 舞台化妝,創意造型,特技化妝\n\nBridal Makeup & Styling ,Event & Party make-up, Fashion shooting, Magazine ,Advertising",
                "categories" => [
                    "Professional service"
                ],
                "email" => "jenga326@hotmail.com",
                "tel" => "97078464"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jengaleemakeup/posts/3111259495555899"
        }
    ];
    public final tags:Array<Tag> = [];
}


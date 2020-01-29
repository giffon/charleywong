package charleywong.entities;

class Forestroundround implements Entity {
    public final id = "forestroundround";
    public final name = [
        zh => "在森林和圓嘢",
        en => "Forest Round Round"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/forestroundround/",
            meta: [
                "id" => "984218788260023",
                "about" => "【手製羊毛盆栽、手捏軟陶盆栽、多肉植物、花盆園藝Select Shop】�定休日: 星期一、三instagram:forest_oo",
                "categories" => [
                    "Garden centre"
                ],
                "addr" => "Milkyway Building, 77 Hung To Road, Rm 09, 4/F,",
                "area" => "Hong Kong",
                "email" => "forestroundround@gmail.com",
                "tel" => "52386664"
            ]
        },
        {
            url: "https://www.instagram.com/forest_oo/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/forestroundround/photos/a.1032824233399478/2859307634084453/"
        },
        {
            url: "https://www.facebook.com/forestroundround/photos/a.1032824233399478/2974688662546349/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}


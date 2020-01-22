package charleywong.entities;

class Noussavons implements Entity {
    public final id = "noUssavonslife";
    public final name = [
        en => "nous_savons_"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/noUssavonslife/",
            meta: [
                "about" => "Natural healthcare\nBetter us - Better world",
                "categories" => [
                    "Health/beauty",
                    "Skincare service",
                    "Health spa"
                ],
                "email" => "pollab17@outlook.com",
                "tel" => "55421877",
                "id" => "101143674657744"
            ]
        },
        {
            url: "https://www.instagram.com/nous_savons_/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/noUssavonslife/photos/a.101816591257119/147930379979073/"
        },
        {
            url: "https://www.facebook.com/noUssavonslife/photos/a.101816591257119/147143186724459/"
        },
        {
            url: "https://www.facebook.com/noUssavonslife/posts/119836619455116"
        }
    ];
}


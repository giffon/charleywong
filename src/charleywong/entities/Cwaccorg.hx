package charleywong.entities;

class Cwaccorg implements Entity {
    public final id = "cwacc.org";
    public final name = [
        zh => "IVE(CW) 動漫文化社"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cwacc.org/",
            meta: [
                "about" => "香港專業教育學院(柴灣)學生會動漫文化社\nThe Anime Comics Club of the IVE(CW) Students\' Union",
                "categories" => [
                    "Non-profit organisation"
                ],
                "email" => "info@cwacc.org",
                "id" => "180939441970496"
            ]
        },
        {
            url: "https://www.instagram.com/cwanisoc/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cwacc.org/posts/2399280696803015"
        }
    ];
    public final tags:Array<Tag> = [];
}


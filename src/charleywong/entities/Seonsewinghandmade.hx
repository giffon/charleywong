package charleywong.entities;

class Seonsewinghandmade implements Entity {
    public final id = "Seonsewinghandmade";
    public final name = [
        zh => "淳記手作",
        en => "Seon Sewing Handmade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Seonsewinghandmade/",
            meta: [
                "about" => "從小就看著媽媽車縫東西養家糊口，深受車縫興趣，兒時喜愛復古的東西，長大後都一直記掛著兒時外公家裡的地磚，很想將興趣跟喜愛事物兩者為一，所以就產生了淳記手作 - 傳承。",
                "categories" => [
                    "Arts and crafts shop",
                    "Sewing and alterations"
                ],
                "email" => "seonsewinghandmade@gmail.com",
                "tel" => "61143255"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Seonsewinghandmade/photos/a.1701421513515487/2355651134759185/"
        },
        {
            url: "https://www.facebook.com/Seonsewinghandmade/photos/a.1701421513515487/2348602272130738/"
        },
        {
            url: "https://www.facebook.com/Seonsewinghandmade/posts/2340977716226527"
        },
        {
            url: "https://www.facebook.com/Seonsewinghandmade/posts/2502384703419160"
        }
    ];
}


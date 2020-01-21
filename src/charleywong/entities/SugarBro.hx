package charleywong.entities;

class SugarBro implements Entity {
    public final id = "SugarBroHK";
    public final name = [
        en => "Sugar Bro"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/user/Sugarbromusic"
        },
        {
            url: "https://www.facebook.com/SugarBroHK/",
            meta: [
                "about" => "\"不祈求你灑脫放棄一切，而看看我們純粹的堅持，令你回味你曾經年輕、熱血過的事。”",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "sugarbromusic@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/SUGARBRO+HK/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SugarBroHK/photos/a.124504201043993/1286395878188147/"
        }
    ];
}


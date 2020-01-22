package charleywong.entities;

class Wusoul implements Entity {
    public final id = "Wusoul";
    public final name = [
        zh => "胡鬚",
        en => "Wusoul"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Wusoul/",
            meta: [
                "about" => "香港本地插畫師 & 手作人\n胡亂走下去，讓自己蹣跚放縱，覓回屬於自己的靈魂。\n...\n\n\n\nSee more",
                "categories" => [
                    "Artist",
                    "Graphic designer"
                ],
                "email" => "wuwusoul@gmail.com",
                "id" => "163956920446010"
            ]
        },
        {
            url: "https://www.instagram.com/wu_soul/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Wusoul/photos/a.317966395045061/1472232899618399/"
        },
        {
            url: "https://www.facebook.com/Wusoul/photos/a.166353090206393/1427607194080970/"
        },
        {
            url: "https://www.facebook.com/Wusoul/posts/1411430592365297"
        },
        {
            url: "https://www.facebook.com/Wusoul/photos/a.317966395045061/1359995327508824/"
        }
    ];
}


package charleywong.entities;

class Knightlaihk implements Entity {
    public final id = "knight.lai.hk";
    public final name = [
        zh => "黎特",
        en => "Knight Lai"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/knight.lai.hk/",
            meta: [
                "about" => "來自香港的漫畫家、插畫家。\nIG: knightlaiart",
                "categories" => [
                    "Artist",
                    "Writer",
                    "Art"
                ],
                "email" => "knightlaiarts@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/knightlaiart/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/knight.lai.hk/photos/a.516006911790927/2588492221209042/"
        }
    ];
}


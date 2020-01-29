package charleywong.entities;

class JSplaysmusic implements Entity {
    public final id = "JSplaysmusic";
    public final name = [
        zh => "占咪心plays music"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/user/swy999"
        },
        {
            url: "https://www.facebook.com/JSplaysmusic/",
            meta: [
                "id" => "430639887082691",
                "about" => "工作聯絡:\ninbox/tel:6227 2560\n\n教 電/木結他,Bass,鼓, Ukulele, 錄音及混音。\n電結他及木結他setup服務。",
                "categories" => [
                    "Musician/band"
                ],
                "tel" => "62272560"
            ]
        },
        {
            url: "https://www.instagram.com/jimmyshum/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JSplaysmusic/photos/a.439313622881984/1914619972018001/"
        },
        {
            url: "https://www.facebook.com/JSplaysmusic/posts/1899539666859365"
        },
        {
            url: "https://www.facebook.com/JSplaysmusic/posts/1854233131390019"
        },
        {
            url: "https://www.facebook.com/JSplaysmusic/videos/2325767804342320/"
        }
    ];
    public final tags:Array<Tag> = [];
}


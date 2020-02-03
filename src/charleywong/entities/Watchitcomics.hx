package charleywong.entities;

class Watchitcomics implements Entity {
    public final id = "watchit.comics";
    public final name = [
        en => "Watchit",
        zh => "觀賞用"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/watchit.comics/"
        },
        {
            url: "https://www.facebook.com/watchit.comics/",
            meta: [
                "id" => "414340429383387",
                "about" => "利用你的觀察力以及細心思考，尋覓出故事的真相。\n\n想追哂所有故去連登post遂個留言睇,體驗最佳：...\n\n\n\n\nSee more",
                "categories" => [
                    "Writer"
                ],
                "email" => "watchitcomics@hotmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/watchit.comics/photos/a.486578822159547/552421445575284/"
        },
        {
            url: "https://www.facebook.com/watchit.comics/photos/a.513978349419594/599172250900203/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


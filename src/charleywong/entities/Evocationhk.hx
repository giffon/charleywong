package charleywong.entities;

class Evocationhk implements Entity {
    public final id = "evocationhk";
    public final name = [
        en => "Evocation HK",
        zh => "招魂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://site.douban.com/EVOCATIONHK"
        },
        {
            url: "https://www.facebook.com/evocationhk/",
            meta: [
                "id" => "491006354294741",
                "about" => "Evocation 招魂成軍2002年，為香港最早的黑死金屬樂隊之一，歌曲以東方陰邪之氣及宗教元素加入黑死金屬淆成獨特風格。\n\n樂隊主腦為結他及主唱Tomy,多年來成員經歷多次變動，現役陣容為結他手",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "evocationhk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/evocationhk/photos/a.617586684970040/2565455790183110/"
        },
        {
            url: "https://www.facebook.com/evocationhk/photos/a.491333300928713/2592029087525780/"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}


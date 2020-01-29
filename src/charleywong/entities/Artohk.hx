package charleywong.entities;

class Artohk implements Entity {
    public final id = "Artohk";
    public final name = [
        zh => "阿塗"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Artohk/",
            meta: [
                "about" => "阿塗，曾創作並出版《高登神獸卡》、《謎圖小學雞》、《鵰娜猩！頂硬上！》、《圖解廣東話》及《大粵港諺語》海報，現有漫畫專欄「神獸漫話」及「神獸塗鴉」 連載於雜誌、報章及網上",
                "categories" => [
                    "Author"
                ],
                "email" => "gapbetweeth@gmail.com",
                "id" => "333246600089821"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Artohk/posts/2637769949637463"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


package charleywong.entities;

class Cuttieandpastie implements Entity {
    public final id = "cuttieandpastie";
    public final name = [
        en => "Cut & Paste"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cuttieandpastie/",
            meta: [
                "about" => "Cut & Paste.\nSketches & handicrafts. Original creations. Follow the heart.\nInstagram: @cut_andpaste #cutandpastedoodle",
                "categories" => [
                    "Arts & humanities website"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cuttieandpastie/photos/a.411511632315383/1762151927251340/"
        },
        {
            url: "https://www.facebook.com/cuttieandpastie/photos/a.381157418684138/1723723757760824/"
        }
    ];
}


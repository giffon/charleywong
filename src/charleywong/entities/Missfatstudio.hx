package charleywong.entities;

class Missfatstudio implements Entity {
    public final id = "missfatstudio";
    public final name = [
        en => "Miss FAT studio",
        zh => "肥娃藝術工作室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://iloveukiwi2.wix.com/missfatstudio"
        },
        {
            url: "https://www.facebook.com/missfatstudio/",
            meta: [
                "id" => "388310494551140",
                "about" => "肥娃藝術工作室\nMiss FAT studio",
                "categories" => [
                    "Education"
                ],
                "email" => "iloveukiwi2@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/missfatstudio/posts/2618821964833304"
        }
    ];
}


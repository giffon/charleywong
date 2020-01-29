package charleywong.entities;

class Hopehandmade implements Entity {
    public final id = "hopehandmadee";
    public final name = [
        en => "Hope handmade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hopehandmadee/",
            meta: [
                "about" => "店主偶爾做做不同手作搜羅不同布料\n與大家一起分享手作的快樂\n每件作品都係全人手製作 剪裁 車縫\n用心製作希望大家都感受到",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "tel" => "63545389",
                "id" => "530969480414902"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hopehandmadee/posts/1267822553396254"
        }
    ];
    public final tags:Array<Tag> = [];
}


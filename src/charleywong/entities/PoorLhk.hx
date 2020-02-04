package charleywong.entities;

class PoorLhk implements Entity {
    public final id = "poorLhk";
    public final name = [
        zh => "窮家有道"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.poorlhk.com"
        },
        {
            url: "https://www.facebook.com/poorLhk/",
            meta: [
                "id" => "111855799235806",
                "about" => "窮一生，單親家庭，公屋出身，典型的香港Loser。\n22歲由0開始以12K月薪上路，２６歲儲到第一個１００萬。之後裸辭休息再上路！舒服地賺，舒服地儲。唔發達唔緊要，最緊要開心，舒服！",
                "categories" => [
                    "Blogger",
                    "Author",
                    "Media"
                ],
                "email" => "poorlhk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/poorLhk/photos/a.115196542235065/694747647613282/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


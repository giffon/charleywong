package charleywong.entities;

class Daisywonghk implements Entity {
    public final id = "daisywonghk";
    public final name = [
        zh => "香港作家王迪詩"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.daisywong.com.hk"
        },
        {
            url: "https://www.facebook.com/daisywonghk/",
            meta: [
                "id" => "175944345770295",
                "about" => "寸嘴女作家。「在我的生活裡，我就是主角。」Contact: daisy.lancashire@gmail.com",
                "categories" => [
                    "Author"
                ],
                "email" => "daisy.lancashire@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/daisywonghk/posts/2670721546292550"
        },
        {
            url: "https://www.facebook.com/daisywonghk/posts/2551754251522614"
        },
        {
            url: "https://www.facebook.com/daisywonghk/posts/2793205677377469"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


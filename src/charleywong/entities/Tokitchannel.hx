package charleywong.entities;

class Tokitchannel implements Entity {
    public final id = "tokit.channel";
    public final name = [
        zh => "陶傑"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cup.com.hk"
        },
        {
            url: "https://www.facebook.com/tokit.channel/",
            meta: [
                "id" => "272574169481780",
                "about" =>
                "「今日世界的問題，是愚昧的人竟然臭串而非常自信，而聰慧的人卻充滿疑慮。」（羅素：The trouble with the world is that the stupid are cocksure and the intelligent are full of doubt. )\n\n讓我們一起改變這一切。",
                "categories" => [
                    "TV channel"
                ],
                "email" => "chiptsao@netvigator.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tokit.channel/posts/2732071190198720"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


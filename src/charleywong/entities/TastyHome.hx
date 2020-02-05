package charleywong.entities;

class TastyHome implements Entity {
    public final id = "hktastyhome";
    public final name = [
        en => "Tasty Home"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/c/TastyHome"
        },
        {
            url: "https://www.facebook.com/hktastyhome/",
            meta: [
                "id" => "1752992288105713",
                "about" => "Tasty home\n\n香港地買樓被評為「離地」，原因係香港人人工要追上樓價升幅係不可能任務。人始終要住，Tasty Home為大家未雨綢繆，增加接觸樓價樓宇嘅機會，「貼地」地追蹤樓價表現、內櫳裝修",
                "categories" => [
                    "TV channel"
                ],
                "email" => "pr@tastyhome.hk",
                "tel" => "37052345"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hktastyhome/videos/909528559414609/"
        },
        {
            url: "https://www.facebook.com/hktastyhome/videos/910106132690474/"
        },
        {
            url: "https://www.facebook.com/hktastyhome/videos/920853244937577/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


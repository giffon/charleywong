package charleywong.entities;

class Unclecato implements Entity {
    public final id = "unclecato";
    public final name = [
        zh => "貓叔",
        en => "meowsuk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/user/catosze"
        },
        {
            url: "https://www.facebook.com/unclecato/",
            meta: [
                "id" => "124438280986408",
                "about" => "多多指教！放片上youtube只為「分享」。喜歡請Like一下。想繼續收睇記得訂閱哦!",
                "categories" => [
                    "Personal website"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/unclecato/posts/2671406106289600"
        },
        {
            url: "https://www.facebook.com/unclecato/photos/a.729551820475048/2318470831583131/"
        }
    ];
    public final tags:Array<Tag> = [];
}


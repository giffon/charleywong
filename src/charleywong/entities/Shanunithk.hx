package charleywong.entities;

class Shanunithk implements Entity {
    public final id = "shanunithk";
    public final name = [
        zh => "山UNIT"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/shanunithk/",
            meta: [
                "about" => "山UNIT , 記錄我們遊玩過的。\n\n山, 在山上看見的, 遇到的, 遺忘的, 還記得的。\nUNIT , 是單位, 是組合, 是個人, 也可以是群體。",
                "categories" => [
                    "Personal blog"
                ],
                "id" => "392739574660679"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/shanunithk/posts/425213911413245"
        },
        {
            url: "https://www.facebook.com/shanunithk/photos/a.412326276035342/434005503867419/"
        }
    ];
    public final tags:Array<Tag> = [];
}


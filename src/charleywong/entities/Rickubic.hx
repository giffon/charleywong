package charleywong.entities;

class Rickubic implements Entity {
    public final id = "rickloillustration";
    public final name = [
        en => "Rickubic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/rickloillustration/",
            meta: [
                "about" =>
                "Through illustrations, I try to define, share and convey meanings with the contrast of lines, calling for reflections of the bright and dark sides. Whatever hidden in the illustrations are for the audience to interpret.",
                "categories" => [
                    "Artist",
                    "Art",
                    "Visual arts"
                ],
                "email" => "rick.lo@rickubic.com",
                "id" => "202284699897999"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rickloillustration/photos/a.592504624209336/2135141046612345/"
        },
        {
            url: "https://www.facebook.com/rickloillustration/posts/2212154428911006"
        }
    ];
    public final tags:Array<Tag> = [];
}


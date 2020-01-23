package charleywong.entities;

class BuggyStudio implements Entity {
    public final id = "1902473526649079";
    public final name = [
        en => "Buggy Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/1902473526649079/",
            meta: [
                "id" => "1902473526649079",
                "about" => "Remind the good things in life~",
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/1902473526649079/photos/a.1996736107222820/2456704314559328/"
        },
        {
            url: "https://www.facebook.com/1902473526649079/photos/a.1996736107222820/2445127849050308/"
        }
    ];
}


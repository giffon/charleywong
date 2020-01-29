package charleywong.entities;

class JOEsBricks implements Entity {
    public final id = "Joe520frances";
    public final name = [
        en => "JOE\'s Bricks"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.flickr.com/photos/78570952@N05"
        },
        {
            url: "https://www.facebook.com/Joe520frances/",
            meta: [
                "id" => "837911323069541",
                "about" => "Trying different building and creation by using bricks. Bricks are limited but not the art!",
                "categories" => [
                    "Visual arts"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Joe520frances/photos/a.838300926363914/1224178184442851/"
        },
        {
            url: "https://www.facebook.com/Joe520frances/posts/1223247414535928"
        }
    ];
}


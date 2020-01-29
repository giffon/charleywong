package charleywong.entities;

class Enjoyhiking implements Entity {
    public final id = "enjoyhiking";
    public final name = [
        zh => "賞山樂山"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/enjoyhiking/",
            meta: [
                "about" => "香港人的行山遊記",
                "categories" => [
                    "Recreation & sport website"
                ],
                "email" => "enjoyhikinginhk@gmail.com",
                "id" => "324432127675078"
            ]
        },
        {
            url: "https://www.instagram.com/enjoyhiking/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/enjoyhiking/posts/2235592193225719"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Archuoic implements Entity {
    public final id = "archuoic";
    public final name = [
        zh => "OIC 親子丼"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/archuoic/",
            meta: [
                "id" => "115540999032051",
                "about" => "一間業務神秘的公司（其實是沒有業務）你，老闆是大佬柱，員工有是但哥、介意哥、Lady娿哿。",
                "categories" => [
                    "Brand"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/archuoic/posts/371625280090287"
        },
        {
            url: "https://www.facebook.com/archuoic/posts/346318189287663"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class Akorcp implements Entity {
    public final id = "akorcp";
    public final name = [
        zh => "有種責任叫堅持"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/akorcp19/"
        },
        {
            url: "https://www.facebook.com/akorcp/",
            meta: [
                "id" => "1635707343349674",
                "about" => "「我們要保持著希望和堅持。當失去這份希望與堅持時，我們便真真正正的敗給對方。」",
                "categories" => [
                    "Book"
                ],
                "email" => "akorcp@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/akorcp/posts/2469263449994055"
        },
        {
            url: "https://www.facebook.com/akorcp/photos/a.1659147874338954/2374977769422624/"
        }
    ];
    public final tags:Array<Tag> = [
        book,
        media,
    ];
}


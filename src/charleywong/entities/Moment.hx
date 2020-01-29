package charleywong.entities;

class Moment implements Entity {
    public final id = "moment20190416";
    public final name = [
        en => "Moment"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/moment20190416/",
            meta: [
                "id" => "653399421762224",
                "about" =>
                "Moment is a family of hardworking people who are passionate about personal protective equipment for sports to save lives. We design, develop and market personal protective equipment for your family.",
                "categories" => [
                    "Brand",
                    "Sport & recreation",
                    "Outdoor and sporting goods company"
                ],
                "email" => "support@moment.hk"
            ]
        },
        {
            url: "https://www.instagram.com/moment20190416/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/moment20190416/posts/750246152077550"
        },
        {
            url: "https://www.facebook.com/moment20190416/photos/a.714835008951998/734878316947667/"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class EmberRoom implements Entity {
    public final id = "Emberoom";
    public final name = [
        en => "Ember Room"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Emberoom/",
            meta: [
                "about" => "Ember Room\n那些蠟燭與生活的點滴\n...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Gift shop",
                    "Home decor"
                ],
                "email" => "contact.ember.room@gmail.com",
                "tel" => "93253870",
                "id" => "444054109283813"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Emberoom/photos/a.539529383069618/1016492712039947/"
        },
        {
            url: "https://www.facebook.com/Emberoom/photos/a.539529383069618/925358067820079/"
        }
    ];
}


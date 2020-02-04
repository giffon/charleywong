package charleywong.entities;

class MeteorHK implements Entity {
    public final id = "meteorhk";
    public final name = [
        en => "Meteor HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.meteor.com.hk"
        },
        {
            url: "https://www.facebook.com/meteorhk/",
            meta: [
                "id" => "257927644328857",
                "about" => "Camera & Lens (Leica & others) • Accessories • Bags • books • original print • Film dev • Printing • workshop • exhibition",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "addr" => "9A Lin fook House, 3 Jardine\'s Crescent",
                "area" => "Hong Kong",
                "email" => "enquiry@meteor.com.hk",
                "tel" => "23920363"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/meteorhk/photos/a.429569723831314/2371048043016796/"
        },
        {
            url: "https://www.facebook.com/meteorhk/posts/2321937834594484"
        },
        {
            url: "https://www.facebook.com/meteorhk/photos/a.258410924280529/2306740129447588/"
        },
        {
            url: "https://www.facebook.com/meteorhk/photos/a.429569723831314/2278545858933682/"
        },
        {
            url: "https://www.facebook.com/meteorhk/photos/a.258410924280529/2271200293001572/"
        },
        {
            url: "https://www.facebook.com/meteorhk/photos/a.258410924280529/2266145273507074/"
        }
    ];
    public final tags:Array<Tag> = [
        photography,
        shop
    ];
}


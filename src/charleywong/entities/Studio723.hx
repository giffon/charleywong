package charleywong.entities;

class Studio723 implements Entity {
    public final id = "723studio";
    public final name = [
        en => "723 Studio Limited"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/723studio/",
            meta: [
                "about" => "We’re a tiny design studio in HK 🇭🇰 striving to create functional, sustainable, and delightful objects...",
                "categories" => [
                    "Art",
                    "Graphic designer",
                    "Designer"
                ],
                "email" => "info@723studio.com",
                "tel" => "24168688",
                "id" => "279274449095537"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/723studio/photos/a.711707022518942/1020576544965320/"
        },
        {
            url: "https://www.facebook.com/723studio/posts/992766831079625"
        },
        {
            url: "https://www.facebook.com/723studio/photos/a.711707022518942/983434345346207/"
        }
    ];
    public final tags:Array<Tag> = [];
}


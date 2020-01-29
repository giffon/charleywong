package charleywong.entities;

class Fulltimeheadhunter implements Entity {
    public final id = "fulltimeheadhunter";
    public final name = [
        zh => "全職獵人",
        en => "FullTime Headhunter"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fulltimeheadhunter/",
            meta: [
                "id" => "410430919321484",
                "about" => "中環Headhunter，遊走各大企業、不停挖角。澳洲回流，全職獵頭，兼職旅人。風流不下流，靠把口搵食。分享每日光怪陸離、有血有淚的獵頭生涯。",
                "categories" => [
                    "Writer",
                    "Blogger",
                    "Recruiter"
                ],
                "email" => "ruby@nmeprmarketing.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fulltimeheadhunter/posts/1063729633991606"
        },
        {
            url: "https://www.facebook.com/fulltimeheadhunter/posts/939714309726473"
        },
        {
            url: "https://www.facebook.com/fulltimeheadhunter/photos/a.487939604903948/939196199778284/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


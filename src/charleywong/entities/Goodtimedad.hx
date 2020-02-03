package charleywong.entities;

class Goodtimedad implements Entity {
    public final id = "goodtimedad";
    public final name = [
        zh => "爸爸的美好時光"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/goodtimedad/",
            meta: [
                "id" => "1570484113207740",
                "about" => "我們清楚明白媽媽的辛苦和付出~ （戴頭盔）",
                "categories" => [
                    "Blogger"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/goodtimedad/photos/a.1570726463183505/2429317267324416/"
        },
        {
            url: "https://www.facebook.com/goodtimedad/photos/a.1570726463183505/2414244725498337/"
        },
        {
            url: "https://www.facebook.com/goodtimedad/photos/a.1570726463183505/2411896322399844/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


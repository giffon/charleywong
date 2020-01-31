package charleywong.entities;

class Lam1Hey implements Entity {
    public final id = "Lam1Hey";
    public final name = [
        zh => "林日曦"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Lam1Hey/",
            meta: [
                "id" => "450867315005279",
                "about" => "毛記電視、《100毛》、《黑紙》及白卷出版社創辦人、填詞人\n書：白痴、青筋、黑面、快樂有限、肉麻、灰鳩、金毛、木獨",
                "categories" => [
                    "Author"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/Lam1Hey/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Lam1Hey/posts/2385673334857991"
        },
        {
            url: "https://www.facebook.com/Lam1Hey/photos/a.450913135000697/2457957300962927/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


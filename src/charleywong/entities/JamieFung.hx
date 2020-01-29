package charleywong.entities;

class JamieFung implements Entity {
    public final id = "jamie.fkyoga";
    public final name = [
        en => "Jamie Fung"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.etnet.com.hk/mobile/tc/diva/category.php?id=jamiefung"
        },
        {
            url: "https://www.facebook.com/jamie.fkyoga/",
            meta: [
                "id" => "463936550419973",
                "about" => "ERYT500,RPY85\nAyurveda Therapy,Prenatal&postnatal yoga\nHatha yoga,power yoga,core flow...\n\n\n\nSee more",
                "categories" => [
                    "Blogger",
                    "Fitness model",
                    "Yoga studio"
                ],
                "email" => "fky1031@icloud.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jamie.fkyoga/posts/1513752118771739"
        }
    ];
    public final tags:Array<Tag> = [];
}


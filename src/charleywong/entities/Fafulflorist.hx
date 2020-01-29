package charleywong.entities;

class Fafulflorist implements Entity {
    public final id = "fafulflorist";
    public final name = [
        en => "Faful florist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fafulflorist/",
            meta: [
                "id" => "194497001483870",
                "about" => "花店\nFa.花| ful adj.\nHong Kong florist...\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Shopping & retail",
                    "Florist"
                ],
                "email" => "fafulflorist@gmail.com",
                "tel" => "64864737"
            ]
        },
        {
            url: "https://www.instagram.com/fafulflorist/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fafulflorist/posts/424810491785852"
        }
    ];
    public final tags:Array<Tag> = [];
}


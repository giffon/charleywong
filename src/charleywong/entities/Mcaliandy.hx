package charleywong.entities;

class Mcaliandy implements Entity {
    public final id = "mc.ali.andy";
    public final name = [
        en => "MC Ali",
        zh => "阿李"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/c/阿李"
        },
        {
            url: "https://www.facebook.com/mc.ali.andy/",
            meta: [
                "id" => "875565659174500",
                "about" => "This is Ali.\nI rap what I see,\nI rap what I believe,...\n\n\n\nSee more",
                "categories" => [
                    "Producer",
                    "Musician",
                    "Musician/band"
                ],
                "email" => "andyli.company@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/mc.ali.andy/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mc.ali.andy/videos/499072857331248/"
        },
        {
            url: "https://www.facebook.com/mc.ali.andy/photos/a.950580871672978/2797373946993652/"
        },
        {
            url: "https://www.facebook.com/mc.ali.andy/videos/591525048336986/"
        },
        {
            url: "https://www.facebook.com/mc.ali.andy/videos/2480073522047114/"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}


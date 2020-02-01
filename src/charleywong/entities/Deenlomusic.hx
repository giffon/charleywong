package charleywong.entities;

class Deenlomusic implements Entity {
    public final id = "deenlomusic";
    public final name = [
        zh => "癲佬音樂",
        en => "deenlomusic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/watch?v=W7AZdzXXJQc"
        },
        {
            url: "https://www.facebook.com/deenlomusic/",
            meta: [
                "id" => "113780986668024",
                "about" => "癲佬一個。",
                "categories" => [
                    "Musician"
                ],
                "email" => "deenlomusic@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/deenlomusic/videos/2788654021159151/"
        },
        {
            url: "https://www.facebook.com/deenlomusic/posts/117787199600736"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}


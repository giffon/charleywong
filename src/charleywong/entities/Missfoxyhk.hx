package charleywong.entities;

class Missfoxyhk implements Entity {
    public final id = "missfoxyhk";
    public final name = [
        zh => "狐狸小姐",
        en => "Miss Foxy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.missfoxy.net"
        },
        {
            url: "https://www.facebook.com/missfoxyhk/",
            meta: [
                "id" => "144429755744758",
                "about" => "狐狸小姐 Miss Foxy\nHong Kong Artist & handcrafter - Miss Foxy\n香港藝術家&手作人 - “狐狸小姐”...\n\n\n\nSee more",
                "categories" => [
                    "Artist",
                    "Arts & humanities website"
                ],
                "email" => "ckyulikeswim@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/missfoxyhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/missfoxyhk/videos/407256320184321/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


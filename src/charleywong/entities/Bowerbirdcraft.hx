package charleywong.entities;

class Bowerbirdcraft implements Entity {
    public final id = "bowerbirdcraft";
    public final name = [
        zh => "園丁鳥",
        en => "Bowerbird"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bowerbirdcraft/",
            meta: [
                "about" => "喜歡藍與綠 鯨與鳥\n不愛說話的人\n默默創作自然中的小生物",
                "categories" => [
                    "Gardener",
                    "Arts and crafts shop"
                ],
                "email" => "alephchan@gmail.com",
                "id" => "1182568668455255"
            ]
        },
        {
            url: "https://www.instagram.com/bowerbirdcraft/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bowerbirdcraft/posts/2537251622986946"
        },
        {
            url: "https://www.facebook.com/bowerbirdcraft/posts/2843963672315738"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}


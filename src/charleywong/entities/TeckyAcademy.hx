package charleywong.entities;

class TeckyAcademy implements Entity {
    public final id = "tecky.io";
    public final name = [
        en => "Tecky Academy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://tecky.io"
        },
        {
            url: "https://www.facebook.com/tecky.io/",
            meta: [
                "id" => "1220402398098821",
                "about" => "Discover technology Discover your talent\n發 現 科 技，發 揮 所 長",
                "categories" => [
                    "Computer training school",
                    "School",
                    "Science, technology & engineering"
                ],
                "addr" => "Rm 2715-16, 27/F, One Midtown, 11 Hoi Shing Road",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "hello@tecky.io",
                "tel" => "97256400"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tecky.io/photos/a.1242620759210318/1553069384832119/"
        },
        {
            url: "https://www.facebook.com/tecky.io/photos/a.1224811677657893/1538724422933282/"
        }
    ];
    public final tags:Array<Tag> = [
        technology,
        shop
    ];
}


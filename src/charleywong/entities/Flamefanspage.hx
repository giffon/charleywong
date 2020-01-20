package charleywong.entities;

class Flamefanspage implements Entity {
    public final id = "flamefanspage";
    public final name = [
        zh => "微光",
        en => "Flame"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/flamefanspage/",
            meta: [
                "about" => "微光 Flame微光 是我們對人對夢想的一點小火光，我們相信手作的溫度可以為我們身處的城市亮起處處微光，單純的想藉著親手做，可以做出溫暖心房的小東西，帶給大家快樂和驚喜。",
                "categories" => [
                    "Product/service"
                ],
                "email" => "flameproduction.hk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/flamefanspage/posts/3412219785517334"
        },
        {
            url: "https://www.facebook.com/flamefanspage/photos/a.921348131271191/3428482333891079/"
        }
    ];
}


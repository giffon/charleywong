package charleywong.entities;

class Photobyfaidias implements Entity {
    public final id = "photobyfaidias";
    public final name = [
        en => "Photobyfaidias"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://photobyfaidias.wordpress.com"
        },
        {
            url: "https://www.facebook.com/photobyfaidias/",
            meta: [
                "id" => "191415327550837",
                "about" => "婚禮,宴會,商業及雜誌拍攝",
                "categories" => [
                    "Product/service"
                ],
                "email" => "photobyfaidias@gmail.com",
                "tel" => "92605653"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/photobyfaidias/photos/a.736814039677627/3761169003908767/"
        },
        {
            url: "https://www.facebook.com/photobyfaidias/posts/4020991471259851"
        }
    ];
    public final tags:Array<Tag> = [];
}


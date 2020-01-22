package charleywong.entities;

class Daisyzoom implements Entity {
    public final id = "Daisyzoom";
    public final name = [
        en => "Daisyzoom"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Daisyzoom/",
            meta: [
                "about" => "Daisyzoom －\n乾花 Dried Flower ; 保鮮花 Preserved Flower ; 鮮花 Fresh Flower",
                "categories" => [
                    "Florist",
                    "Patio/garden"
                ],
                "addr" => "618 Shanghai Street, Mongkok",
                "area" => "Hong Kong",
                "email" => "info@daisyzoom.com",
                "id" => "492145607633111"
            ]
        },
        {
            url: "https://www.instagram.com/daisyzoom/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Daisyzoom/photos/a.611527055694965/1372457189601944/"
        },
        {
            url: "https://www.facebook.com/Daisyzoom/photos/a.611527055694965/1239004489613882/"
        }
    ];
}


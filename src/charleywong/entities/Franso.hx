package charleywong.entities;

class Franso implements Entity {
    public final id = "franso";
    public final name = [
        en => "franso"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.franso.hk"
        },
        {
            url: "https://www.facebook.com/franso/",
            meta: [
                "id" => "666296976740918",
                "about" => "專業攝影師、縮時攝影師\n於2018國際縮時電影節獲得獎項，\n亦於多個國際電影節中獲獎。...\n\n\n\n\nSee more",
                "categories" => [
                    "Photographer",
                    "Artist",
                    "Film director"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/fransophoto/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/franso/posts/2502803726423558"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class SewingLabHK implements Entity {
    public final id = "SewingLabHK";
    public final name = [
        en => "Sewing Lab HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/SewingLabHK/",
            meta: [
                "id" => "807030506062650",
                "about" => "Sew for fun.. so for love...",
                "categories" => [
                    "Arts and crafts shop",
                    "Sewing and alterations"
                ],
                "addr" => "九龍茘枝角瓊林街93號龍翔工業大廈9樓 A座 06室",
                "area" => "Lai Chi Kok",
                "email" => "sewinglabhk@gmail.com",
                "tel" => "23468990"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SewingLabHK/posts/2454670204631997"
        },
        {
            url: "https://www.facebook.com/SewingLabHK/photos/a.872344672864566/2397131663719185/"
        },
        {
            url: "https://www.facebook.com/SewingLabHK/photos/a.872344672864566/2120678364697851/"
        }
    ];
    public final tags:Array<Tag> = [];
}


package charleywong.entities;

class FlowerMusic10 implements Entity {
    public final id = "flowermusic10";
    public final name = [
        en => "Flower Music 10"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.flowermusic.hk"
        },
        {
            url: "https://www.facebook.com/flowermusic10/",
            meta: [
                "id" => "880884738635595",
                "about" =>
                "花好音樂廳是一個讓音樂愛好者連結音樂，與音樂人交流的場地。Flower Music 10, where people learn music, make music and meet music lovers, is a space for facilitating a craze for music.",
                "categories" => [
                    "Local business"
                ],
                "addr" => "機利文街50號德享大廈10樓",
                "area" => "Central, Hong Kong",
                "email" => "info@flowermusic.hk"
            ]
        },
        {
            url: "https://www.instagram.com/flowermusic10/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/flowermusic10/posts/2953320198058695"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}


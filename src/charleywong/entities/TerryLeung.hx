package charleywong.entities;

class TerryLeung implements Entity {
    public final id = "BirdTerryLeung";
    public final name = [
        en => "Terry Leung"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BirdTerryLeung/",
            meta: [
                "id" => "682455752166207",
                "about" => "Terry Leung（雀仔）\n\n畫筆為主而動\n我口為主而開\n努力成為天主的插畫師",
                "categories" => [
                    "Writer"
                ],
                "email" => "info.joyfulbird@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BirdTerryLeung/photos/a.793322631079518/796382664106848/"
        },
        {
            url: "https://www.facebook.com/BirdTerryLeung/photos/a.683003635444752/754648684946913/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


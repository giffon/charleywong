package charleywong.entities;

class Hikingwave implements Entity {
    public final id = "hikingwave";
    public final name = [
        zh => "浪行山野",
        en => "Hiking Wave"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hikingwave/",
            meta: [
                "about" => "一班熱愛綠野之人組成的群體, 定期相約郊遊遠足, 享受戶外活動帶來的快樂和滿足感, 並立志走遍全港山野每個角落!",
                "categories" => [
                    "Recreation & sport website"
                ],
                "email" => "hikingwave@hotmail.com",
                "id" => "268583626923060"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hikingwave/posts/704644256650326"
        },
        {
            url: "https://www.facebook.com/hikingwave/photos/a.277967845984638/817896171991800/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


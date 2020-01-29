package charleywong.entities;

class EPMusicStation implements Entity {
    public final id = "epmusicstation";
    public final name = [
        en => "EP Music Station"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.epmusicstation.com"
        },
        {
            url: "https://www.facebook.com/epmusicstation/",
            meta: [
                "id" => "553691938114904",
                "about" => "EP Music Station 主要提供現場樂隊演奏服務、音響及樂器租賃服務。",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "epmusicstation@gmail.com",
                "tel" => "67590168"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/epmusicstation/posts/1550156225135132"
        }
    ];
    public final tags:Array<Tag> = [];
}


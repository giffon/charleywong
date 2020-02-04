package charleywong.entities;

class ResistanceLiveMedia implements Entity {
    public final id = "resistancelive2014";
    public final name = [
        en => "Resistance Live Media"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/resistancelive2014/",
            meta: [
                "id" => "1432983410299343",
                "about" => "RLM主要紀錄、播報香港及國際的各種社會抗爭行動，歡迎大家關注、參與。",
                "categories" => [
                    "News and media website"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/resistancelive2014/videos/747057499144911/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


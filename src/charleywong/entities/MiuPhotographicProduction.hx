package charleywong.entities;

class MiuPhotographicProduction implements Entity {
    public final id = "miuphotographic";
    public final name = [
        en => "Miu Photographic Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://hkwedding.hk"
        },
        {
            url: "https://www.facebook.com/miuphotographic/",
            meta: [
                "id" => "2327064460698263",
                "about" => "Make it unique 在這個世界上，每個人都是獨一無二的存在。或許是經歷、或許是愛情，又或許是人生中的點點滴滴成就了一段又一段屬於每個人不平凡的人生。",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "Unit 2, K-Sky, 10/F, Ching Cheong Industrial Building,1-7, Kwai Cheong Road",
                "area" => "Kwai Chung",
                "email" => "miuphotographicproduction@gmail.com",
                "tel" => "63300388"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/miuphotographic/posts/3270638246340875"
        },
        {
            url: "https://www.facebook.com/miuphotographic/photos/a.2373030089435033/3154763927928308/"
        }
    ];
}


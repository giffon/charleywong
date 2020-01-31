package charleywong.entities;

class Peoplesmarkethk implements Entity {
    public final id = "peoplesmarket.hk";
    public final name = [
        zh => "人民超市",
        en => "Peoples Market"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://peoplesmarket.hk"
        },
        {
            url: "https://www.facebook.com/peoplesmarket.hk/",
            meta: [
                "id" => "430953663640632",
                "about" => "延續香港傳統味道",
                "categories" => [
                    "Supermarket",
                    "Health Food Shop",
                    "Shopping & retail"
                ],
                "addr" => "葵涌華星街2-6號安達工業大廈5A",
                "area" => "Hong Kong",
                "email" => "cs@peoplesmarket.hk",
                "tel" => "25686811"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/peoplesmarket.hk/photos/a.437485142987484/2376409535761692/"
        },
        {
            url: "https://www.facebook.com/peoplesmarket.hk/videos/848123845606593/"
        }
    ];
    public final tags:Array<Tag> = [
        shop,
        food
    ];
}


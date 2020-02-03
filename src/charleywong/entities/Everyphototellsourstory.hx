package charleywong.entities;

class Everyphototellsourstory implements Entity {
    public final id = "everyphototellsourstory";
    public final name = [
        zh => "幸福照相館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://littlelittlered.com"
        },
        {
            url: "https://www.facebook.com/everyphototellsourstory/",
            meta: [
                "id" => "261367324031846",
                "about" => "千紅\n90後、作家、攝影師、教書先生。\n\n「寫真是紀錄愛的瞬間。」\n「愛おしいと思った瞬間をそのまま思い出せる様に」",
                "categories" => [
                    "Photographer",
                    "Writer"
                ],
                "email" => "11340625d@connect.polyu.hk",
                "tel" => "61670696"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/everyphototellsourstory/photos/a.261370474031531/1343600099141891/"
        },
        {
            url: "https://www.facebook.com/everyphototellsourstory/photos/a.336673326501245/1277216325780269/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        shop
    ];
}


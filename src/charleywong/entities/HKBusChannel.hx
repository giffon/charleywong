package charleywong.entities;

class HKBusChannel implements Entity {
    public final id = "HKBusChannel";
    public final name = [
        zh => "巴士台",
        en => "HK Bus Channel"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkbuschannel.com"
        },
        {
            url: "https://www.facebook.com/HKBusChannel/",
            meta: [
                "id" => "459548207416219",
                "about" => "巴士台 HK Bus Channel 是一個由多名熱愛巴士的公共運輸從業員及巴士迷成立的群組，歡迎各位同好分享資料及相片。\n\n有關相片轉載聲明，請參看「簡介」部份。",
                "categories" => [
                    "News and media website"
                ],
                "email" => "hkbuschannel@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKBusChannel/photos/a.459562364081470/2340986989272322/"
        },
        {
            url: "https://www.facebook.com/HKBusChannel/photos/a.568810709823301/2342267409144280/"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        transport
    ];
}


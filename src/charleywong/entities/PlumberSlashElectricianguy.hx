package charleywong.entities;

class PlumberSlashElectricianguy implements Entity {
    public final id = "PlumberSlashElectricianguy";
    public final name = [
        zh => "水電佬工程公司"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://plumberelectrician.wixsite.com/seoidinlou"
        },
        {
            url: "https://www.facebook.com/PlumberSlashElectricianguy/",
            meta: [
                "id" => "1893857254223630",
                "about" => "你好!我們是水電佬-為機電工程署註冊電業承辦商。\n\n\n\n我們成立於2014年，以誠信和優質服務為理念，一直為大小店舖及市民提供專業的電業、水喉、冷氣、裝修等工程。",
                "categories" => [
                    "Home improvement"
                ],
                "addr" => "天水圍天盛苑",
                "area" => "Hong Kong",
                "email" => "plumberelectricianguy@gmail.com",
                "tel" => "98886459"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PlumberSlashElectricianguy/photos/a.1913545615588127/2495977990678217/"
        },
        {
            url: "https://www.facebook.com/PlumberSlashElectricianguy/photos/a.1913545615588127/2382092292066788/"
        }
    ];
    public final tags:Array<Tag> = [
        handyman
    ];
}


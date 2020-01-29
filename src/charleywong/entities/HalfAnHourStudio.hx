package charleywong.entities;

class HalfAnHourStudio implements Entity {
    public final id = "HalfAnHourStudio";
    public final name = [
        zh => "半時間Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.halfanhour-studio.com"
        },
        {
            url: "https://www.facebook.com/HalfAnHourStudio/",
            meta: [
                "id" => "278626252282317",
                "about" => "「半時間Studio」- 日本手工結他Caparison Guitars香港代理\n旺角band房出租, 音樂課程, 專業結他Setup服務\n營業時間: 12:00pm - 03:00am\nBook房熱線: 3575 3858",
                "categories" => [
                    "Musician/band",
                    "Arts and entertainment",
                    "Film & music shop"
                ],
                "email" => "info@halfanhour-studio.com",
                "tel" => "35753858"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HalfAnHourStudio/photos/a.288745231270419/1698162813661980/"
        },
        {
            url: "https://www.facebook.com/HalfAnHourStudio/photos/a.506089229536017/1603982853079977/"
        }
    ];
    public final tags:Array<Tag> = [];
}


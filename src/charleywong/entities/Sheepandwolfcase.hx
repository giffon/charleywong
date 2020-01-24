package charleywong.entities;

class Sheepandwolfcase implements Entity {
    public final id = "sheepandwolfcase";
    public final name = [
        en => "Sheep And Wolf Shop",
        zh => "手機殼專門店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.sheepandwolf.store"
        },
        {
            url: "https://www.facebook.com/sheepandwolfcase/",
            meta: [
                "id" => "181968928607450",
                "about" => "香港一站式網上手機周邊，數碼產品超級市場�提供大量款式最新最潮手機殼以供選購，本店專營手機周邊�如手機殼，充電器，各種屏幕貼，智能手錶配件，錶帶，充電線，無綫充電器，手機",
                "categories" => [
                    "Phone/tablet",
                    "Shopping & retail",
                    "Website"
                ],
                "addr" => "Room 715, My Loft , Hoi Wing Road, Sam Shing, Tuen Mun, NT(上門提貨請先預約)",
                "area" => "Hong Kong",
                "email" => "noel5335@gmail.com",
                "tel" => "51066815"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sheepandwolfcase/posts/1676919699112358"
        }
    ];
}


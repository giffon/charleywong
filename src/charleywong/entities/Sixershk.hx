package charleywong.entities;

class Sixershk implements Entity {
    public final id = "sixershk";
    public final name = [
        en => "Sixers"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.sixers.com.hk"
        },
        {
            url: "https://www.facebook.com/sixershk/",
            meta: [
                "id" => "410978615699572",
                "about" => "Sixers is a Hong Kong based Photography, Videography, Advertising, Printing and Design company. Since we established in 2012.",
                "categories" => [
                    "Signs & banner service",
                    "Photography & videography"
                ],
                "addr" => "九⿓龍土瓜灣旭日街 1 號 瑞英工業⼤廈 5/F 13室",
                "area" => "Hong Kong",
                "email" => "info@sixers.com.hk",
                "tel" => "34862206"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sixershk/posts/1616794635117958"
        },
        {
            url: "https://www.facebook.com/sixershk/posts/1572887366175352"
        }
    ];
    public final tags:Array<Tag> = [
        printing,
        photographer,
        shop
    ];
}


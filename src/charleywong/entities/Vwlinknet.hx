package charleywong.entities;

class Vwlinknet implements Entity {
    public final id = "vwlink.net";
    public final name = [
        zh => "德慧文化圖書有限公司"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/vwlink.net/",
            meta: [
                "about" => "台灣校園書房出版社港澳總代理；\n\n德慧文化荃灣站書店...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Publisher",
                    "Independent book shop",
                    "Christian church"
                ],
                "addr" => "香港新界荃灣橫窩仔街2-8號",
                "area" => "Hong Kong",
                "email" => "info@vwlink.net",
                "tel" => "24074000",
                "id" => "194580454090"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/vwlink.net/photos/a.329975409090/10157172469964091"
        }
    ];
    public final tags:Array<Tag> = [
        book,
        shop
    ];
}


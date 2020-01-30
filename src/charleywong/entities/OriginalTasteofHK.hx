package charleywong.entities;

class OriginalTasteofHK implements Entity {
    public final id = "OriginalTasteofHK";
    public final name = [
        zh => "原味香港",
        en => "The Original Taste of HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://gfhk.boutir.com"
        },
        {
            url: "https://www.facebook.com/OriginalTasteofHK/",
            meta: [
                "id" => "110713050348280",
                "about" => "我哋有統一顏色，全因我哋夠曬原味。\n\n人長大後，去過無數地方。...\n\n\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Society & culture website"
                ],
                "tel" => "91760004"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/OriginalTasteofHK/photos/a.117342499685335/143827747036810/"
        },
        {
            url: "https://www.facebook.com/OriginalTasteofHK/photos/a.117342499685335/119813349438250/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}


package charleywong.entities;

class ConscienceShare implements Entity {
    public final id = "ConscienceShare";
    public final name = [
        zh => "良介"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/con.sharehk/"
        },
        {
            url: "https://www.facebook.com/ConscienceShare/",
            meta: [
                "id" => "111333533690463",
                "about" => "良介，意指良知介紹，亦以良知劃出為界線。\n\n良介成立於社會動盪中，我們構建黃色經濟圈，將生活劃分顏色，但選擇仍憑良知。...\n\n\n\nSee more",
                "categories" => [
                    "Media/news company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ConscienceShare/photos/a.113718266785323/115192333304583/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}


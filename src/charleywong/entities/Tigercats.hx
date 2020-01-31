package charleywong.entities;

class Tigercats implements Entity {
    public final id = "tigercats0";
    public final name = [
        en => "Tigercats"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tigercats0/",
            meta: [
                "about" => "Tigercats_，是一個香港的手作品牌， 希望能夠把不同地方的題材/材料融入手作當中，把手作文化帶入大家的生活，分享創作的快樂，亦希望重現Made in Hong Kong的優良產品。",
                "categories" => [
                    "Bags/luggage"
                ],
                "id" => "452221058298779"
            ]
        },
        {
            url: "https://www.instagram.com/tigercats_/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/B4rjNNmjvhr/"
        },
        {
            url: "https://www.instagram.com/p/ByjIarjDLBM/"
        },
        {
            url: "https://www.facebook.com/tigercats0/photos/a.454550694732482/1193428914177986/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


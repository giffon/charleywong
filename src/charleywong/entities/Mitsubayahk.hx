package charleywong.entities;

class Mitsubayahk implements Entity {
    public final id = "mitsubayahk";
    public final name = [
        zh => "三葉屋",
        en => "Mitsubaya Udon & Soba"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mitsubayahk/",
            meta: [
                "id" => "481455768898072",
                "about" => "每天新鮮自家製作烏冬及蕎麥麵，力求造出日本傳統風味。晚市另提供不同小食，配以精選日本啤酒、清酒、燒酒等，適合三五知己歡聚，跟店員交流飲食心得。",
                "categories" => [
                    "Restaurant"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mitsubayahk/posts/996391997404444"
        },
        {
            url: "https://www.facebook.com/mitsubayahk/photos/a.519551745088474/895522830824695/"
        },
        {
            url: "https://www.facebook.com/mitsubayahk/posts/983805778663066"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


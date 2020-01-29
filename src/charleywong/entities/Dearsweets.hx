package charleywong.entities;

class Dearsweets implements Entity {
    public final id = "dearsweetsb";
    public final name = [
        en => "Dearsweets"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dearsweetsb/",
            meta: [
                "id" => "171418650200786",
                "about" => "Dear Sweets 提供多款自家設計的低糖甜品，選用低熱量糖及少油少糖配方，令愛好甜品的你可以減輕負擔,我們亦不定期推出烘培班，讓你可一試製作蛋糕的樂趣，與心愛的人分享。",
                "categories" => [
                    "Kitchen/Cooking",
                    "Product/service"
                ],
                "email" => "dear.sweetshk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dearsweetsb/photos/a.171434453532539/447433332599315/"
        },
        {
            url: "https://www.facebook.com/dearsweetsb/photos/a.171434453532539/412485232760792/"
        },
        {
            url: "https://www.facebook.com/dearsweetsb/posts/357141121628537"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


package charleywong.entities;

class Nookmylife implements Entity {
    public final id = "nook.mylife";
    public final name = [
        zh => "屬於我們的小角落"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/nook.mylife/",
            meta: [
                "about" => "Nook.mylife於2017年開始在香港不同的大型商場及手作設計購物平台擺放市集,希望學習更多讓自己更進步。\n本品牌以刺繡、針線作主題，刺繡就像油顏色用一針一線一筆一劃地做出獨一無二的作品",
                "categories" => [
                    "Accessories"
                ],
                "id" => "466355300456874"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/nook.mylife/photos/a.561062024319534/818240021935065/"
        },
        {
            url: "https://www.facebook.com/nook.mylife/posts/805433763215691"
        },
        {
            url: "https://www.facebook.com/nook.mylife/posts/766793883746346"
        },
        {
            url: "https://www.facebook.com/nook.mylife/photos/a.561062024319534/765908240501577/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}


package charleywong.entities;

class Muddydirtywater implements Entity {
    public final id = "muddydirtywater";
    public final name = [
        zh => "渾水"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.patreon.com/muddywaterfinance"
        },
        {
            url: "https://www.facebook.com/muddydirtywater/",
            meta: [
                "id" => "322991677859013",
                "about" => "而家得閒搞下投資、搞下項目、睇下書、寫下野和抽下水。細個搞過下上市公司和投行的基金咁囉",
                "categories" => [
                    "Author"
                ],
                "email" => "muddydirtywater@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/muddydirtywater/posts/1324342347723936"
        },
        {
            url: "https://www.facebook.com/muddydirtywater/posts/1308949755929862"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}


package charleywong.entities;

class ISunOne implements Entity {
    public final id = "iSunOne";
    public final name = [
        en => "iSun.One"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://isun.one"
        },
        {
            url: "https://www.facebook.com/iSunOne/",
            meta: [
                "id" => "606461173121921",
                "about" => "iSunOne 希望通過區塊鏈技術、加密貨幣建立一個真正去中心、反壟斷的安全、私密、便捷、合規的全球支付工具。",
                "categories" => [
                    "App Page"
                ],
                "email" => "hello@isun.one"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/iSunOne/photos/a.625182191249819/846719215762781/"
        },
        {
            url: "https://www.facebook.com/iSunOne/posts/821167048317998"
        }
    ];
    public final tags:Array<Tag> = [
        currency
    ];
}


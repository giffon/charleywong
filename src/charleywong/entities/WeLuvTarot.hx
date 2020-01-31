package charleywong.entities;

class WeLuvTarot implements Entity {
    public final id = "weluvtarot";
    public final name = [
        en => "We Luv Tarot"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/weluvtarot/",
            meta: [
                "about" => "我們是由2014年成立的香港塔羅占卜店\n售賣塔羅牌、書籍 |塔羅 |天使卡 |水晶 |專業輔導| 盧恩石 |臼井靈氣 |風水 |八字 |頌缽 |音叉 |Certified Angel Card Reader™",
                "categories" => [
                    "Product/service",
                    "Astrologist & psychic",
                    "Shopping & retail"
                ],
                "email" => "weluvtarot@gmail.com",
                "tel" => "54088058",
                "id" => "1460464807570054"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/weluvtarot/posts/2475292212753970"
        }
    ];
    public final tags:Array<Tag> = [
        shop,
        accessories,
        book
    ];
}


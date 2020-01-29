package charleywong.entities;

class Kakahandmade implements Entity {
    public final id = "kakahandmade";
    public final name = [
        zh => "嘉嘉年華"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kakahandmade/",
            meta: [
                "about" => "為了繼續發羊毛氈手作夢, 開設了羊毛氈工作室, 可在工作室選購羊毛，功具，配件，訂做，工作坊等等。\n\n除此，間唔時會擺手作攤及接訂單補幫生計。\n歡迎inbox或親臨羊毛氈工作室查詢。",
                "categories" => [
                    "Product/service"
                ],
                "email" => "neko919104@yahoo.com.hk",
                "id" => "159470354076247"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kakahandmade/photos/a.607707192585892/2673854955971095/"
        },
        {
            url: "https://www.facebook.com/kakahandmade/photos/a.607707192585892/2639843522705572/"
        },
        {
            url: "https://www.facebook.com/kakahandmade/posts/2607514819271776"
        }
    ];
    public final tags:Array<Tag> = [];
}


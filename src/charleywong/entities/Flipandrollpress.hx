package charleywong.entities;

class Flipandrollpress implements Entity {
    public final id = "flipandrollpress";
    public final name = [
        zh => "翻滾出版",
        en => "flip & roll press"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/flipandrollpress/",
            meta: [
                "about" => "*僅限預約 by appointment only*\n\nPrinting｜Graphic Design | Publishing",
                "categories" => [
                    "Arts and crafts shop",
                    "Printing service",
                    "Book shop"
                ],
                "addr" => "RM 5, 17/F, Metro Centre 2, 21 Lam Hing ST, Kowloon Bay, Kowloon",
                "area" => "Hong Kong",
                "email" => "info@flipandroll.press",
                "id" => "173671323256620"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/flipandrollpress/posts/499341120689637"
        },
        {
            url: "https://www.facebook.com/flipandrollpress/photos/a.179817892641963/426098351347248/"
        }
    ];
    public final tags:Array<Tag> = [];
}


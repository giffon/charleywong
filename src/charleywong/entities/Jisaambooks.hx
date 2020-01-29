package charleywong.entities;

class Jisaambooks implements Entity {
    public final id = "jisaam.books";
    public final name = [
        zh => "貳叄書房",
        en => "jisaam.books"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jisaam.books/",
            meta: [
                "categories" => [
                    "Book shop"
                ],
                "addr" => "RM 1202, Grand Place, Nathan Road 558-560, Yau Ma Tei",
                "area" => "Hong Kong",
                "email" => "jisaam.books@gmail.com",
                "id" => "114741956569603"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jisaam.books/photos/a.123273912383074/158479195529212"
        }
    ];
    public final tags:Array<Tag> = [];
}


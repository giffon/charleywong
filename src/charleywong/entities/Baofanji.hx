package charleywong.entities;

class Baofanji implements Entity {
    public final id = "baofanji";
    public final name = [
        zh => "包販子"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/baofanji/",
            meta: [
                "categories" => [
                    "Bakery",
                    "Coffee shop"
                ],
                "addr" => "太子通菜街254號地下",
                "area" => "Hong Kong",
                "tel" => "26565605",
                "id" => "190321418129361"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/baofanji/photos/a.258819224612913/728769777617853/"
        },
        {
            url: "https://www.facebook.com/baofanji/photos/a.258819224612913/654806581680840/"
        }
    ];
}


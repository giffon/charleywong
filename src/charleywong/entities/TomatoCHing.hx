package charleywong.entities;

class TomatoCHing implements Entity {
    public final id = "tomato.c.hing.shamshuipo";
    public final name = [
        zh => "番茄師兄",
        en => "TOMATO C HING"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tomato.c.hing.shamshuipo/",
            meta: [
                "about" => "#專心一意做好番茄湯底",
                "categories" => [
                    "Noodle house",
                    "Hong Kong restaurant"
                ],
                "addr" => "九龍深水埗基隆街255號地下",
                "area" => "Sham Shui Po",
                "tel" => "94621567"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tomato.c.hing.shamshuipo/posts/2399849566942745"
        }
    ];
}


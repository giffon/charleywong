package charleywong.entities;

class Fanartbyalexchan implements Entity {
    public final id = "fanartbyalexchan";
    public final name = [
        zh => "塵阿力映畫"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fanartbyalexchan/",
            meta: [
                "id" => "1637402359889934",
                "about" => "一切因爲我喜歡畫畫喜歡設計喜歡美術和我喜歡的電影，一個完全塵阿力的計劃，希望大家齊齊見證。",
                "categories" => [
                    "Interest"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fanartbyalexchan/photos/a.1637404269889743/2089253871371445/"
        },
        {
            url: "https://www.facebook.com/fanartbyalexchan/photos/a.1637404269889743/2109288162701349/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}


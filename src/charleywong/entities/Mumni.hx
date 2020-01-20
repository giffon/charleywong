package charleywong.entities;

class Mumni implements Entity {
    public final id = "mumni";
    public final name = [
        zh => "兩母女手作"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mumni/",
            meta: [
                "about" => "兩母女醉心手作工藝多年，可說為無手工不歡！\n品牌主打為皮革。為皮革襯托鮮豔色彩的配件，既實用又奪目！皮革飾物，為沉實的皮革添上一份可愛！",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mumni/photos/a.552903458155596/2453849918060931/"
        },
        {
            url: "https://www.facebook.com/mumni/photos/a.552903458155596/2163948663717726/"
        }
    ];
}


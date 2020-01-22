package charleywong.entities;

class Makpeileather implements Entity {
    public final id = "makpeileather";
    public final name = [
        zh => "墨皮",
        en => "Makpei leathercraft"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/makpeileather/",
            meta: [
                "about" => "墨皮將混合了的顏色染在皮革上，寫下旅途上遇到的風景，捕捉每個可能只出現一瞬間的時刻，用漸變色調描繪變幻永無常。",
                "categories" => [
                    "Bags/luggage",
                    "Clothing (brand)"
                ],
                "email" => "colouredleather@gmail.com",
                "id" => "935033866565681"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/makpeileather/posts/2489044651164587"
        },
        {
            url: "https://www.facebook.com/makpeileather/photos/a.965914400144294/2554938597908525/"
        }
    ];
}


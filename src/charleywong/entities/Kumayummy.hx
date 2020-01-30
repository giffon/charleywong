package charleywong.entities;

class Kumayummy implements Entity {
    public final id = "kumayummy";
    public final name = [
        zh => "熊築地"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kumayummy/",
            meta: [
                "id" => "500981876750878",
                "about" => "sushi,sashimi,Uni,japan food ,Take away,restaurant,causeway bay\n銅鑼灣：告士打道276號地下（近世貿與景隆街）",
                "categories" => [
                    "Sushi Restaurant"
                ],
                "addr" => "銅鑼灣告士打道276號地下4號舖",
                "area" => "Causeway Bay",
                "tel" => "91721167"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kumayummy/posts/1405020953013628"
        },
        {
            url: "https://www.facebook.com/kumayummy/photos/a.507205826128483/1369308983251492/"
        },
        {
            url: "https://www.facebook.com/kumayummy/photos/a.507205826128483/1405045013011222/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}


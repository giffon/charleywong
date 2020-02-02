package charleywong.entities;

class Sayheybakery implements Entity {
    public final id = "sayheybakery";
    public final name = [
        zh => "四喜麵包西餅"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/sayhey4cake/"
        },
        {
            url: "https://www.facebook.com/sayheybakery/",
            meta: [
                "id" => "617982941575321",
                "about" => "長沙灣青山道500號百美工業大廈地下B6-8號鋪（荔枝角B1出口）\n星期一至六：06:30 - 19:00\n星期日：休息",
                "categories" => [
                    "Local business"
                ],
                "email" => "say.hey.bakery@gmail.com",
                "tel" => "39570883"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sayheybakery/photos/a.631901013516847/3429536723753248/"
        },
        {
            url: "https://www.facebook.com/sayheybakery/posts/3375603985813189"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

